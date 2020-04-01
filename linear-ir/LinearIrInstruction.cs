
using System;
using System.Collections.Generic;
using System.Linq;

public class LinearIrInstruction {

  public String Name { get; private set; }
  public IEnumerable<uint> InputRegisters { get; private set; }
  public IEnumerable<uint> OutputRegisters { get; private set; }

  public LinearIrInstruction
  (String name, IEnumerable<uint> oRegs, IEnumerable<uint> iRegs)
  {
    Name = name;
    InputRegisters = iRegs;
    OutputRegisters = oRegs;
  }

  public String InputRegisterString { get { return String
    .Join(" ", InputRegisters.Select(x => "v"+x)); } }

  public String OutputRegisterString { get { return String
    .Join(" ", OutputRegisters.Select(x => "v"+x)); } }

  /// <summary>
  ///     The string representation remains the same across
  ///     stack based and linear ir. This may change later (TODO).
  /// </summary>
  public override String ToString() {
    return Name + " " + OutputRegisterString
      + (OutputRegisters.Count() > 0 && InputRegisters.Count() > 0 
        ? " <- " : String.Empty)
      + InputRegisterString;
  }
}