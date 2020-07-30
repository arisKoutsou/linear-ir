using System;
using System.Collections.Generic;
using System.Linq;
using Mono.Cecil.Cil;

public class LinearIrInstruction {

  public Instruction CorrespondingStackBasedInstruction { get; }

  public String OpCodeAndOperandString { get { 
    return CorrespondingStackBasedInstruction.ToString().Remove(0, 9); } }

  /// <summary>
  ///   Instruction address label. The format is simmilar to the output of
  ///   monodis (.il files)
  /// </summary>
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

  /// <summary>
  ///     The string representation remains the same across
  ///     stack based and linear ir.
  /// </summary>
  public override String ToString() {
    var instructionString = Label + ": " + OutputRegisterString
      + (OutputRegisters.Count() > 0 
        ? " <- " : String.Empty) + OpCodeAndOperandString + " " + InputRegisterString;
    return instructionString;
  }

  public void Dump(IrPrintingPolicy printingPolicy)
  {
    if (!printingPolicy.ColorEnabled) {
      Console.Out.Write(printingPolicy.IndentationString + this);
      return;
    }

    Console.Out.Write(printingPolicy.IndentationString);
    Console.ForegroundColor = ConsoleColor.DarkGray;
    Console.Out.Write(Label + ": ");
    Console.ResetColor();

    Console.ForegroundColor = ConsoleColor.Blue;
    Console.Out.Write(" " + OutputRegisterString);
    Console.ResetColor();

    if (OutputRegisters.Count() > 0)
      Console.Out.Write(" <- ");

    Console.ForegroundColor = ConsoleColor.Magenta;
    Console.Out.Write(this.OpCodeAndOperandString);
    Console.ResetColor();

    Console.ForegroundColor = ConsoleColor.Blue;
    Console.Out.Write(InputRegisterString);
    Console.ResetColor();
  }
}