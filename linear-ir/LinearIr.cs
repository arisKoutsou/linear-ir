
using System;
using Mono.Cecil;
using System.Linq;
using Mono.Cecil.Cil;
using System.Collections.Generic;

public abstract class LinearIr {

  /// <summary>
  ///   This represents the size of the evaluation stack
  ///   at any given point of the code generation.
  ///   We represent the stack with a counter, because we
  ///   don't need information about the type of elements
  ///   in the stack and because we can infer the name of
  ///   the register of the linear ir from the stackSize (see newRegister()).
  /// </summary>
  protected int evaluationStackSize = 0;

  public MethodDefinition MethodDefinition { get; }

  public IEnumerable<LinearIrInstruction> Instructions { get; protected set; }

  public int MaxRegisterCount { get; protected set; }

  protected LinearIr(MethodDefinition methodDefinition)
  {
    MethodDefinition = methodDefinition;
  }

  /// <summary>
  ///     Returns the input(read) registers as they will apear
  ///     in the linear ir. This is done by popping from the evaluation
  ///     stack as many elements as the cil instruction's "StackBehaviour"
  ///     indicates. For each one of these elements a new register is created.
  /// </summary>
  /// <param name="instruction"> The cil instruction </param>
  /// <returns> A list of strings indicating the new registers </returns>
  protected int[] GetInstructionInputRegisters(Instruction instruction)
  {
    int[] inputRegisters = null;
    switch (instruction.OpCode.StackBehaviourPop)
    {
      case StackBehaviour.Pop0:
        // Do nothing.
        break;
      case StackBehaviour.Pop1:
      case StackBehaviour.Popi:
      case StackBehaviour.Popref:
        inputRegisters = new int[1];
        inputRegisters[0] = --evaluationStackSize;
        break;
      case StackBehaviour.Pop1_pop1:
      case StackBehaviour.Popi_pop1:
      case StackBehaviour.Popi_popi:
      case StackBehaviour.Popref_pop1:
      case StackBehaviour.Popi_popr4:
      case StackBehaviour.Popi_popr8:
      case StackBehaviour.Popi_popi8:
      case StackBehaviour.Popref_popi:
        inputRegisters = new int[2];
        inputRegisters[1] = --evaluationStackSize;
        inputRegisters[0] = --evaluationStackSize;
        break;

      case StackBehaviour.Popi_popi_popi:
      case StackBehaviour.Popref_popi_popi:
      case StackBehaviour.Popref_popi_popi8:
      case StackBehaviour.Popref_popi_popr4:
      case StackBehaviour.Popref_popi_popr8:
      case StackBehaviour.Popref_popi_popref:
        inputRegisters = new int[3];
        inputRegisters[2] = --evaluationStackSize;
        inputRegisters[1] = --evaluationStackSize;
        inputRegisters[0] = --evaluationStackSize;
        break;
      case StackBehaviour.PopAll:
        // This cases is for the 'leave' instruction.
        evaluationStackSize = 0;
        break;
      case StackBehaviour.Varpop:
        if (instruction.OpCode == OpCodes.Call
          || instruction.OpCode == OpCodes.Calli
          || instruction.OpCode == OpCodes.Callvirt
          || instruction.OpCode == OpCodes.Newobj)
        {
          var methodToCall = instruction.Operand as MethodReference;
          inputRegisters = new int[methodToCall.Parameters.Count];
          for (int i = methodToCall.Parameters.Count-1; i >= 0; i--)
          {
            inputRegisters[i] = --evaluationStackSize;
          }
        }
        else if (instruction.OpCode == OpCodes.Ret)
        {
          bool methodReturnTypeIsVoid = 
            MethodDefinition.ReturnType.FullName == "System.Void";
          inputRegisters = new int[methodReturnTypeIsVoid ? 0 : 1];
          if (!methodReturnTypeIsVoid)
          {
            inputRegisters[0] = --evaluationStackSize;
          }
        }
        else
        {
          throw new InvalidOperationException("Bad VarPop case");
        }
        break;
      default:
        throw new InvalidOperationException("Invalid Stack Behaviour");
    }
    return inputRegisters != null ? inputRegisters : new int[0];
  }

  /// <summary>
  ///     Returns the output(write) registers as they will apear
  ///     in the linear ir. This is done by pushing to the evaluation
  ///     stack as many elements as the cil instruction's "StackBehaviour"
  ///     indicates. For each one of these elements a new register is created.
  /// </summary>
  /// <param name="i"> The cil instruction </param>
  /// <returns> A list of strings indicating the new registers </returns>
  protected int[] GetInstructionOutputRegisters(Instruction i)
  {
    int[] outputRegisters = null;
    switch (i.OpCode.StackBehaviourPush)
    {
      case StackBehaviour.Push0:
        // Do nothing.
        break;
      case StackBehaviour.Push1:
      case StackBehaviour.Pushi:
      case StackBehaviour.Pushi8:
      case StackBehaviour.Pushr4:
      case StackBehaviour.Pushr8:
      case StackBehaviour.Pushref:
        outputRegisters = new int[1];
        outputRegisters[0] = evaluationStackSize++;
        break;
      case StackBehaviour.Push1_push1:
        outputRegisters = new int[2];
        outputRegisters[1] = evaluationStackSize++;
        outputRegisters[0] = evaluationStackSize++;
        break;
      case StackBehaviour.Varpush:
        // Instructions that have this behaviour: callvirt calli call
        // This is dealt simmilarly to the ret instruction of the current method.
        var methodToCall = i.Operand as MethodReference;
        bool methodReturnTypeIsVoid = 
          methodToCall.ReturnType.FullName == "System.Void";
        outputRegisters = new int[methodReturnTypeIsVoid ? 0 : 1];
        if (!methodReturnTypeIsVoid)
        {
          outputRegisters[0] = evaluationStackSize++;
        }
        break;
      default:
        throw new InvalidOperationException("Invalid Stack Behaviour");
    }
    // Just update the maximum number of registers used.
    if (evaluationStackSize > MaxRegisterCount)
      MaxRegisterCount = evaluationStackSize;
    // return the result we obtained by the case analysis.
    return outputRegisters != null ? outputRegisters : new int[0];
  }

  /// <summary>
  ///     Get's the linear ir instruction corresponding to the stack based cil
  ///     instruction. The state of the stack is changed according to the 
  ///     behaviour of the instruction.
  /// </summary>
  /// <param name="stackBasedInstruction"> A cil instruction </param>
  /// <returns> A linear ir instruction </returns>
  protected LinearIrInstruction GetLinearIrInstructionFrom(Instruction stackBasedInstruction)
  {
    var inputRegisters = GetInstructionInputRegisters(stackBasedInstruction);
    var outputRegisters = GetInstructionOutputRegisters(stackBasedInstruction);
    return new LinearIrInstruction(
      stackBasedInstruction, outputRegisters, inputRegisters);
  }


  public override String ToString()
  {
    return String.Format("{0}\n{{\n{1}\n}}", 
      MethodDefinition.FullName, String.Join("\n", Instructions));
  }

}