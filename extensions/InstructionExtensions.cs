using System;
using Mono.Cecil;
using System.Linq;
using Mono.Cecil.Cil;
using System.Collections.Generic;

public static class InstructionExtensions {

    public static bool IsControlTransferInstruction(this Instruction i) {
        return IsConditionalOrUnconditionalBranchInstruction(i) 
            || IsSwitchInstruction(i)
            || IsReturnInstruction(i);
    }

    public static IEnumerable<Instruction> GetControlTransferInstructionTargets(this Instruction i) {
        // The switch statement needs special handling because 
        // it has more than 1 targets.
        if (IsConditionalOrUnconditionalBranchInstruction(i)) {
            return new Instruction[] { i.Operand as Instruction };
        } else if (IsSwitchInstruction(i)) {
            return i.Operand as Instruction[];
        } else if (IsReturnInstruction(i)) {
            return new Instruction[] {};
        }
        throw new InvalidOperationException(
            @"The given instruction is not a control transfer instruction");
    }

    /// <summary>
    ///     Check's weather an instruction transfers control.
    ///     Examples: jump, blt, br, bez ...
    ///     Some counter examples below:
    ///     i.e: switch, endfinally ...
    ///     TODO: Change the implementation later.
    /// </summary>
    /// <param name="i"> The instruction to check against. </param>
    /// <returns> A boolean value specifying the result </returns>
    public static bool IsConditionalOrUnconditionalBranchInstruction(this Instruction i) {        
        return !IsSwitchInstruction(i) && 
            (i.OpCode.FlowControl == FlowControl.Branch 
                || i.OpCode.FlowControl == FlowControl.Cond_Branch);
    }

    /// <summary>
    ///     Check's whether an instruction is the switch instruction.
    /// </summary>
    /// <param name="i"> The instruction </param>
    /// <returns> A boolean value indicating the result </returns>
    public static bool IsSwitchInstruction(this Instruction i) {
        return i.OpCode == OpCodes.Switch;
    }

    public static bool IsReturnInstruction(this Instruction i) {
        return i.OpCode == OpCodes.Ret;
    }
}


