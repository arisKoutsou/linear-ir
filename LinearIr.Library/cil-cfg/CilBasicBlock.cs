using System;
using System.Collections.Generic;
using Mono.Cecil.Cil;
using System.Linq;

namespace LinearIr.Library
{
  /// <summary>
  ///   Represents a basic block of the CFG representation generated for CIL code.
  /// </summary>
  public class CilBasicBlock {

    /// <summary>
    ///   Constructs a basic block based on an id.
    ///   The state of the basic block is not valid at construction
    ///   and information about in/out basic blocks and instructions must be
    ///   assigned.
    /// </summary>
    /// <param name="id"> 
    ///   Unique integer per method basic 
    ///   block that is used as identifier. 
    /// </param>
    public CilBasicBlock(int id) {
      Id = id;
      InBasicBlocks = new List<CilBasicBlock>();
      OutBasicBlocks = new List<CilBasicBlock>();
      Instructions = new List<Instruction>();
    }

    /// <summary>
    ///   A unique identifier for each basic block. The user of this class
    ///   must ensure that each basic block of a method has a unique id.
    ///   This can be an autoincremented value when constructing basic blocks.
    /// </summary>  
    public int Id { get; }

    /// <summary>
    ///   A list of the basic block instructions order by their
    ///   physical order in the instruction stream.
    /// </summary>
    public List<Instruction> Instructions { get; set; }

    /// <summary>
    ///   Get's the last instruction of the current basic block.
    ///   This shall never be null, because a basic block always contains
    ///   at least one instruction.
    /// </summary>
    public Instruction LastInstruction { get { return Instructions.Last(); } }

    /// <summary>
    /// Fallthrough basic block. This is the basic block that has the
    /// fallthrough instruction at it's start. When the last instruction 
    /// of the current basic block has Unconditional_Branch flow control then
    /// this property has a null value. Note that the last basic block of 
    /// OutBasicBlocks is always the fallthrough.
    /// </summary>
    public CilBasicBlock NextBasicBlock { get { return OutBasicBlocks.Last(); } }

    /// <summary>
    ///   List of basic blocks that lead to the current basic block. 
    ///   This list may be empty. 
    /// </summary>
    public List<CilBasicBlock> InBasicBlocks { get; set; }
    
    /// <summary>
    ///   List of basic blocks that can be reached via the current basic
    ///   block. When this list is empty then the current basic block is an exit block.
    /// </summary>
    public List<CilBasicBlock> OutBasicBlocks { get; set; }

    /// <summary>
    ///   Get's a string representation of the current basic block. 
    ///   This representation contains in/out basic block ids as well as the
    ///   body of the basic block (instructions).
    /// </summary>
    public override String ToString()
    {
      return String.Format("BasicBlock{0}\n{1}\nin: [{2}]\nout: [{3}]\n\n", 
        Id, String.Join("\n", Instructions),
        String.Join(", ", InBasicBlocks.Select(x => x.Id)),
        String.Join(", ", OutBasicBlocks.Select(x => x.Id)));
    }

    /// <summary>
    ///   Get's a string representation of the basic block's label.
    ///   Essentially displays the id of the basic block.
    ///   This shall be used when printing a method's instruction stream as
    ///   a list of basic blocks. In that case the label is useful for human readable
    ///   control flow navigation.
    /// </summary>
    public String Label { get { return "L" + Id; } }
  }
}
