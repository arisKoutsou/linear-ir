using System;
using System.IO;
using Mono.Cecil;

class ControlFlowGraphDump
{
  static void Main(string[] args)
  {
    if (args.Length < 2)
    {
      Console.WriteLine(@"Usage: 
        ControlFlowGraphDump [MODULE_FILENAME] [TYPE_NAME] [METHOD_NAME]");
      return;
    }
    ModuleDefinition module = ModuleDefinition.ReadModule(args[0]);
    CilControlFlowGraph cfg = new CilControlFlowGraph(module, args[1], args[2]);
    Console.WriteLine(cfg);
  }
}
