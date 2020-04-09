
using System;
using System.Collections.Generic;
using System.Linq;
using Mono.Cecil.Cil;

public class LinearIrInstruction {

  public Instruction CorrespondingStackBasedInstruction { get; }

  public String Name { get { return CorrespondingStackBasedInstruction.OpCode.Name; } }

  public String Label { get { return String
    .Format("IL_{0}", CorrespondingStackBasedInstruction.Offset.ToString("X4")); } }
  
  public IEnumerable<int> InputRegisters { get; private set; }

  public IEnumerable<int> OutputRegisters { get; private set; }

  public LinearIrInstruction
  (Instruction stackBasedInstruction, IEnumerable<int> oRegs, IEnumerable<int> iRegs)
  {
    CorrespondingStackBasedInstruction = stackBasedInstruction;
    InputRegisters = iRegs;
    OutputRegisters = oRegs;
  }

  public String InputRegisterString { get { return String
    .Join(" ", InputRegisters.Select(x => "v"+x)); } }

  public String OutputRegisterString { get { return String
    .Join(" ", OutputRegisters.Select(x => "v"+x)); } }

  private String GetLabel(Instruction i)
  {
    return String.Format("IL_{0}:", i.Offset.ToString("X4"));
  }

  /// <summary>
  ///     The string representation remains the same across
  ///     stack based and linear ir. This may change later (TODO).
  /// </summary>
  public override String ToString() {
    var instructionString = Label + ": " + Name + " " + OutputRegisterString
      + (OutputRegisters.Count() > 0 && InputRegisters.Count() > 0 
        ? " <- " : String.Empty)
      + InputRegisterString;
    if (CorrespondingStackBasedInstruction.IsControlFlowInstruction())
    {
      var targetInstructions = CorrespondingStackBasedInstruction
        .GetControlFlowInstructionTargets();
      if (targetInstructions.Count() == 0)
        return instructionString;
      else if (targetInstructions.Count() == 1)
        return instructionString + " | target: " 
          + GetLabel(targetInstructions.Single());
      else
        return instructionString + " | targets: " +
          String.Join(" ", targetInstructions.Select(GetLabel));
    } else {
      return instructionString;
    }
  }
}