using System;
using Mono.Cecil;
using System.Linq;
using Mono.Cecil.Cil;
using System.Collections.Generic;

public static class InstructionExtensions {

    /// <summary>
    ///     Checks if an instruction changes control flow. 
    /// </summary>
    /// <param name="i"> An instruction </param>
    /// <returns> 
    ///     True if instruction is branch, conditional 
    ///     branch or return, false otherwise 
    /// </returns>
    public static bool IsControlFlowInstruction(this Instruction i) {        
        switch (i.OpCode.FlowControl) {
            case FlowControl.Branch:
            case FlowControl.Cond_Branch:
            case FlowControl.Return:
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
    public static IEnumerable<Instruction> GetControlFlowInstructionTargets(this Instruction i) {
        if (i.Operand == null)
            return new Instruction[] {};
        else if (i.Operand is Instruction)
            return new Instruction[] { (Instruction)i.Operand };
        else if (i.Operand is Instruction[])
            return i.Operand as Instruction[];
        throw new InvalidOperationException(
            @"The given instruction is not a control transfer instruction");
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


