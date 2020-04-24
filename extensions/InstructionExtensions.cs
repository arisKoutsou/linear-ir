using System;
using Mono.Cecil.Cil;
using System.Collections.Generic;

public static class InstructionExtensions
{

  /// <summary>
  ///     Checks if an instruction changes control flow. 
  /// </summary>
  /// <param name="i"> An instruction </param>
  /// <returns> 
  ///     True if instruction is branch, conditional 
  ///     branch or return, false otherwise 
  /// </returns>
  public static bool IsControlFlowInstruction(this Instruction i)
  {
    switch (i.OpCode.FlowControl)
    {
      case FlowControl.Branch:
      case FlowControl.Cond_Branch:
      case FlowControl.Return:
      case FlowControl.Throw:
        return true;
      default:
        return false;
    }
  }

  /// <summary>
  ///     Get's the instructions of a method that are targets of a
  ///     control flow instruction. For example if a jump instruction 'i'
  ///     has instruction 't' as it's target then this method returns 't'.
  /// </summary>
  /// <param name="i"> A control flow instruction </param>
  /// <returns> A target instruction (first instruction after a label) </returns>
  public static IEnumerable<Instruction> GetControlFlowInstructionTargets(this Instruction i)
  {
    if (i.OpCode.FlowControl == FlowControl.Return
      || i.OpCode.FlowControl == FlowControl.Throw)
      return new Instruction[] { };
    else if (i.Operand is Instruction)
      return new Instruction[] { (Instruction)i.Operand };
    else if (i.Operand is Instruction[]) // This case is for the switch instruction.
      return i.Operand as Instruction[];
    throw new InvalidOperationException(
      @"The given instruction is not a control transfer instruction");
  }

  /// <summary>
  ///   Get's whether a control flow instruction has a fallthrough block.
  ///   Instructions that don't have fallthrough blocks include: ret, throw and rethrow.
  /// </summary>
  /// <param name="i"> The instruction to check </param>
  /// <returns> A boolean value indicating the result </returns>
  public static bool HasFallthroughInstruction(this Instruction i)
  {
    return i.OpCode.FlowControl != FlowControl.Branch
      && i.OpCode.FlowControl != FlowControl.Return
      && i.OpCode.FlowControl != FlowControl.Throw;
  }

  /// <summary>
  ///   Get's the label of a stack based instruction in the method body.
  ///   This label is ultimately the address of the instruction
  ///   in hexadecimal, counting from 0 from the first instruction of the
  ///   method body.
  /// </summary>
  /// <param name="i"> The cil instruction </param>
  /// <returns> String representation of the instruction label </returns>
  public static String GetLabel(this Instruction i)
  {
    return String.Format("IL_{0}:", i.Offset.ToString("X4"));
  }
}


