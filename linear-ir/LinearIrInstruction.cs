
using System;
using System.Collections.Generic;
using Mono.Cecil.Cil;

public class LinearIrInstruction {

    public String Name { get; private set; }
    public ICollection<String> InputRegisters { get; private set; }
    public ICollection<String> OutputRegisters { get; private set; }

    public LinearIrInstruction(String name, ICollection<String> oRegs, ICollection<String> iRegs) {
        Name = name;
        InputRegisters = iRegs;
        OutputRegisters = oRegs;
    }

    /// <summary>
    ///     The string representation remains the same across
    ///     stack based and linear ir. This may change later (TODO).
    /// </summary>
    public override String ToString() {
        return Name + " " + String.Join(" ", OutputRegisters) 
            + (OutputRegisters.Count > 0 && InputRegisters.Count > 0 ? " <- " : String.Empty)
            + String.Join(" ", InputRegisters);
    }
}