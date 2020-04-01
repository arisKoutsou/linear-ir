using System;
using System.Collections.Generic;
using Mono.Cecil.Cil;
using System.Linq;
using Mono.Cecil;
using System.Diagnostics;
using System.Text;

public class LinearIr
{

  private CilControlFlowGraph cilControlFlowGraph;

  /// <summary>
  ///   This represents the size of the evaluation stack
  ///   at any given point of the code generation.
  ///   We represent the stack with a counter, because we
  ///   don't need information about the type of elements
  ///   in the stack and because we can infer the name of
  ///   the register of the linear ir from the stackSize (see newRegister()).
  /// </summary>
  private uint evaluationStackSize = 0;

  public String TabString = "  ";

  public LinearIr(CilControlFlowGraph cfg)
  {
    cilControlFlowGraph = cfg;
  }

  /// <summary>
  ///     Returns the input(read) registers as they will apear
  ///     in the linear ir. This is done by popping from the evaluation
  ///     stack as many elements as the cil instruction's "StackBehaviour"
  ///     indicates. For each one of these elements a new register is created.
  /// </summary>
  /// <param name="i"> The cil instruction </param>
  /// <returns> A list of strings indicating the new registers </returns>
  private IEnumerable<uint> GetInstructionInputRegisters(Instruction i)
  {
    Stack<uint> inputRegisters = new Stack<uint>(3);
    switch (i.OpCode.StackBehaviourPop)
    {
      case StackBehaviour.Pop0:
        // Do nothing.
        break;
      case StackBehaviour.Pop1:
      case StackBehaviour.Popi:
      case StackBehaviour.Popref:
        inputRegisters.Push(--evaluationStackSize);
        break;
      case StackBehaviour.Pop1_pop1:
      case StackBehaviour.Popi_pop1:
      case StackBehaviour.Popi_popi:
      case StackBehaviour.Popref_pop1:
      case StackBehaviour.Popi_popr4:
      case StackBehaviour.Popi_popr8:
      case StackBehaviour.Popi_popi8:
      case StackBehaviour.Popref_popi:
        inputRegisters.Push(--evaluationStackSize);
        inputRegisters.Push(--evaluationStackSize);
        break;

      case StackBehaviour.Popi_popi_popi:
      case StackBehaviour.Popref_popi_popi:
      case StackBehaviour.Popref_popi_popi8:
      case StackBehaviour.Popref_popi_popr4:
      case StackBehaviour.Popref_popi_popr8:
      case StackBehaviour.Popref_popi_popref:
        inputRegisters.Push(--evaluationStackSize);
        inputRegisters.Push(--evaluationStackSize);
        inputRegisters.Push(--evaluationStackSize);
        break;
      case StackBehaviour.PopAll:
        // This cases is for the 'leave' instruction.
        evaluationStackSize = 0;
        break;
      case StackBehaviour.Varpop:
        if (i.OpCode == OpCodes.Call
          || i.OpCode == OpCodes.Calli
          || i.OpCode == OpCodes.Callvirt
          || i.OpCode == OpCodes.Newobj)
        {
          var methodToCall = i.Operand as MethodReference;
          foreach (var arg in methodToCall.Parameters)
          {
            inputRegisters.Push(--evaluationStackSize);
          }
        }
        else if (i.OpCode == OpCodes.Ret)
        {
          if (cilControlFlowGraph.MethodDefinition.ReturnType.FullName != "System.Void")
          {
            inputRegisters.Push(--evaluationStackSize);
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
    return inputRegisters;
  }

  /// <summary>
  ///     Returns the output(write) registers as they will apear
  ///     in the linear ir. This is done by pushing to the evaluation
  ///     stack as many elements as the cil instruction's "StackBehaviour"
  ///     indicates. For each one of these elements a new register is created.
  /// </summary>
  /// <param name="i"> The cil instruction </param>
  /// <returns> A list of strings indicating the new registers </returns>
  private IEnumerable<uint> GetInstructionOutputRegisters(Instruction i)
  {
    Stack<uint> outputRegisters = new Stack<uint>(3);
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
        outputRegisters.Push(evaluationStackSize++);
        break;
      case StackBehaviour.Push1_push1:
        outputRegisters.Push(evaluationStackSize++);
        outputRegisters.Push(evaluationStackSize++);
        break;
      case StackBehaviour.Varpush:
        // Instructions that have this behaviour: callvirt calli call
        // This is dealt simmilarly to the ret instruction of the current method.
        Debug.Assert(i.OpCode == OpCodes.Call
          || i.OpCode == OpCodes.Calli
          || i.OpCode == OpCodes.Callvirt);
        var methodToCall = i.Operand as MethodReference;
        if (methodToCall.ReturnType.FullName != "System.Void")
        {
          outputRegisters.Push(evaluationStackSize++);
        }
        break;
      default:
        throw new InvalidOperationException("Invalid Stack Behaviour");
    }
    return outputRegisters;
  }

  /// <summary>
  ///     Get's the linear ir instruction corresponding to the stack based cil
  ///     instruction. The state of the stack is changed according to the 
  ///     behaviour of the instruction.
  /// </summary>
  /// <param name="i"> A cil instruction </param>
  /// <returns> A linear ir instruction </returns>
  private LinearIrInstruction evaluate(Instruction i)
  {
    var inputRegisters = GetInstructionInputRegisters(i);
    var outputRegisters = GetInstructionOutputRegisters(i);
    return new LinearIrInstruction(i.OpCode.Name, outputRegisters, inputRegisters);
  }

  /// <summary>
  ///     Appends the evaluated linear ir code to a string builder.
  /// </summary>
  /// <param name="basicBlock"> A basic block of the cfg </param>
  private String emit(CilBasicBlock basicBlock)
  {
    StringBuilder sb = new StringBuilder();
    sb.AppendLine(basicBlock.Label + ":");

    foreach (var instruction in basicBlock.Instructions)
    {
      var linearIrInstruction = evaluate(instruction);
      sb.Append(TabString + linearIrInstruction);
      if (instruction.IsControlFlowInstruction()
        && instruction.OpCode.FlowControl != FlowControl.Return
        && instruction.OpCode.FlowControl != FlowControl.Throw)
      {
        var targetBasicBlocks = basicBlock.OutBasicBlocks
            .Where(x => x != basicBlock.NextBasicBlock)
            .Select(x => x.Label);
        sb.Append(
          (targetBasicBlocks.Count() > 1 ? " | targets: " : " | target: ")
           + String.Join(" ", targetBasicBlocks));
      }
      sb.AppendLine();
    }

    return sb.ToString();
  }

  /// <summary>
  ///   Recursive implementation of a DFS traversal on the control flow graph.
  ///   Recursion enables us to easily save the number of elements on the
  ///   evaluation stack before traversing a path. This way we know the
  ///   state of the evaluation stack after the control flow path is examined,
  ///   and we can move on with a valid evaluation stack to the other paths.
  /// </summary>
  /// <param name="basicBlock"> The starting basic block </param>
  /// <param name="visited"> 
  ///   A map of visited nodes to their respective linear ir code string 
  /// </param>
  private void RecursiveDFS
  (CilBasicBlock basicBlock, Dictionary<CilBasicBlock, String> visited)
  {
    visited.Add(basicBlock, emit(basicBlock));
    foreach (var outBasicBlock in basicBlock.OutBasicBlocks)
    {
      if (!visited.ContainsKey(outBasicBlock)) {
        uint evaluationStackSnapshot = evaluationStackSize;
        RecursiveDFS(outBasicBlock, visited);
        evaluationStackSize = evaluationStackSnapshot;
      }
    }
  }

  /// <summary>
  ///     Performs a DFS traversal of the CFG in order to simulate a
  ///     valid execution path. This way the stack state is always valid
  ///     and the generated linear ir is valid too.
  /// </summary>
  /// <returns> A string with the linear ir corresponding to the current method </returns>
  public String emit()
  {
    // A map from visited basicblocks to their linear ir representation.
    var visited = new Dictionary<CilBasicBlock, String>();

    RecursiveDFS(cilControlFlowGraph.EntryBasicBlock, visited);

    // Join the basic blocks in the order they where originally
    // written. The dfs traversal may mix them up.
    return String.Join("", 
      visited.OrderBy(x => x.Key.Id).Select(x => x.Value));
  }
}