using System;
using System.IO;
using Mono.Cecil;

class ControlFlowGraphTest
{
  static void Main(string[] args)
  {
    Console.WriteLine("Starting the testing sequence...");
    Console.WriteLine("Current directory is: " + Directory.GetCurrentDirectory());
    Console.WriteLine();

    ModuleDefinition module = ModuleDefinition.ReadModule("sample-cil/SampleCil.exe");
    CilControlFlowGraph cfg = new CilControlFlowGraph(module, "MainClass", "Ternary");

    Console.WriteLine(cfg);
  }
}
