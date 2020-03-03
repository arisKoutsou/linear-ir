using System;
using System.Collections.Generic;
using Mono.Cecil.Cil;
using System.Linq;

public class CilBasicBlock {
    public CilBasicBlock(int id) {
        Id = id;
        NextBasicBlock = null;
        InBasicBlocks = new List<CilBasicBlock>();
        OutBasicBlocks = new List<CilBasicBlock>();
        Instructions = new List<Instruction>();
    }

    public int Id { get; }

    public List<Instruction> Instructions { get; set; }

    public Instruction LastInstruction { get { return Instructions.Last(); } }

    /// <summary>
    ///     This is the fallthrough basic block.
    /// </summary>    
    public CilBasicBlock NextBasicBlock { get; set; }

    public List<CilBasicBlock> InBasicBlocks { get; set; }
    
    public List<CilBasicBlock> OutBasicBlocks { get; set; }

    public override String ToString()
    {
        return String.Format("BasicBlock{0}\n{1}\nin: [{2}]\nout: [{3}]\n\n", 
            Id, String.Join('\n', Instructions),
            String.Join(", ", InBasicBlocks.Select(x => x.Id)),
            String.Join(", ", OutBasicBlocks.Select(x => x.Id)));
    }
}