using System.Collections.Generic;
using System.Linq;
using Mono.Cecil;

namespace LinearIr.Library 
{
  public class CfgTraverseLinearIr : LinearIr
  {
    private CilControlFlowGraph cfg;

    private Dictionary<CilBasicBlock, IEnumerable<LinearIrInstruction>> visited
      = new Dictionary<CilBasicBlock, IEnumerable<LinearIrInstruction>>();

    public CfgTraverseLinearIr(MethodDefinition methodDefinition)
      : base(methodDefinition)
    {
      cfg = new CilControlFlowGraph(methodDefinition);
      SetLinearIrInstructions();
    }

    /// <summary>
    ///     Performs a DFS traversal of the CFG in order to simulate a
    ///     valid execution path. This way the stack state is always valid
    ///     and the generated linear ir is valid too.
    /// </summary>
    private void SetLinearIrInstructions()
    {
      foreach (var basicBlock in cfg.BasicBlocks)
      {
        if (!visited.ContainsKey(basicBlock))
        {
          RecursiveDFS(basicBlock);
        }
      }

      Instructions = cfg.BasicBlocks.SelectMany(x => visited[x]);
    }

    private IEnumerable<LinearIrInstruction> 
    GetBasicBlockLinearIrInstructions(CilBasicBlock basicBlock)
    {
      var result = new List<LinearIrInstruction>();
      foreach (var instruction in basicBlock.Instructions)
      {
        result.Add(GetLinearIrInstructionFrom(instruction));
      }
      return result;
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
    private void RecursiveDFS(CilBasicBlock basicBlock)
    {
      visited.Add(basicBlock, GetBasicBlockLinearIrInstructions(basicBlock));
      int evaluationStackSizeSnapshot = evaluationStackSize;
      foreach (var outBasicBlock in basicBlock.OutBasicBlocks)
      {
        evaluationStackSize = evaluationStackSizeSnapshot;
        if (!visited.ContainsKey(outBasicBlock)) 
        {
          RecursiveDFS(outBasicBlock);
        }
      }
    }

  }
}