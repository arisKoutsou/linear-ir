using System;
using System.IO;
using Mono.Cecil;
using Mono.Cecil.Cil;
using System.Linq;

class LinearIrTest
{
    static void Main(string[] args)
    {
        Console.WriteLine("Starting the testing sequence...");
        Console.WriteLine("Current directory is: " + Directory.GetCurrentDirectory());
        Console.WriteLine();

        ModuleDefinition module = ModuleDefinition.ReadModule("sample-cil/SampleCil.exe");
        CilControlFlowGraph cfg = new CilControlFlowGraph(module, "MainClass", "Add");
        LinearIr linearIr = new LinearIr(cfg);
        Console.WriteLine(linearIr.evaluate());
    }

    
}
