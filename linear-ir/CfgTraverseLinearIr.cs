using System.Collections.Generic;
using System.Linq;
using Mono.Cecil;

public class CfgTraverseLinearIr : LinearIr
{
  private CilControlFlowGraph cfg;

  public CfgTraverseLinearIr
  (MethodDefinition methodDefinition)
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
    // A map from visited basicblocks to their linear ir representation.
    var visited = new Dictionary<CilBasicBlock, IEnumerable<LinearIrInstruction>>();

    foreach (var basicBlock in cfg.BasicBlocks)
    {
      if (visited.ContainsKey(basicBlock))
        continue;
      RecursiveDFS(basicBlock, visited);
    }

    Instructions = cfg.BasicBlocks.SelectMany(x => visited[x]);
  }

  private IEnumerable<LinearIrInstruction> 
  GetBasicBlockLinearIrInstructions(CilBasicBlock basicBlock)
  {
    return basicBlock.Instructions
      .Select(GetLinearIrInstructionFrom);
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
  private void RecursiveDFS
  (CilBasicBlock basicBlock, Dictionary<CilBasicBlock, IEnumerable<LinearIrInstruction>> visited)
  {
    visited.Add(basicBlock, GetBasicBlockLinearIrInstructions(basicBlock));
    foreach (var outBasicBlock in basicBlock.OutBasicBlocks)
    {
      if (!visited.ContainsKey(outBasicBlock)) {
        int evaluationStackSnapshot = evaluationStackSize;
        RecursiveDFS(outBasicBlock, visited);
        evaluationStackSize = evaluationStackSnapshot;
      }
    }
  }

#if (false)
  /// <summary>
  ///     Performs a DFS traversal of the CFG in order to simulate a
  ///     valid execution path. This way the stack state is always valid
  ///     and the generated linear ir is valid too.
  /// </summary>
  /// <returns> A string with the linear ir corresponding to the current method </returns>
  public String emit()
  {
    // A map from visited basicblocks to their linear ir representation.
    var visited = new Dictionary<CilBasicBlock, String>();

    foreach (var basicBlock in cfg.BasicBlocks)
    {
      if (visited.ContainsKey(basicBlock))
        continue;
      RecursiveDFS(cfg.EntryBasicBlock, visited);
    }

    return String.Join("", cfg.BasicBlocks.Select(x => visited[x]));
  }

  /// <summary>
  ///     Appends the evaluated linear ir code to a string builder.
  /// </summary>
  /// <param name="basicBlock"> A basic block of the cfg </param>
  private String emit(CilBasicBlock basicBlock)
  {
    StringBuilder sb = new StringBuilder();
    sb.AppendLine(basicBlock.Label + ":");

    foreach (var instruction in basicBlock.Instructions)
    {
      var linearIrInstruction = evaluate(instruction);
      sb.Append(TabString + linearIrInstruction);
      if (instruction.IsControlFlowInstruction()
        && instruction.OpCode.FlowControl != FlowControl.Return
        && instruction.OpCode.FlowControl != FlowControl.Throw)
      {
        var targetBasicBlocks = basicBlock.OutBasicBlocks
            .Where(x => x != basicBlock.NextBasicBlock)
            .Select(x => x.Label);
        sb.Append(
          (targetBasicBlocks.Count() > 1 ? " | targets: " : " | target: ")
           + String.Join(" ", targetBasicBlocks));
      }
      sb.AppendLine();
    }

    return sb.ToString();
  }
#endif

}