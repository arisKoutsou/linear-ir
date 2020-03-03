using System;
using System.IO;
using System.Reflection;
using Mono.Cecil;
using Mono.Cecil.Cil;

class ControlFlowGraphTest
{
    static void Main(string[] args)
    {
        Console.WriteLine("Starting the testing sequence...");
        Console.WriteLine("Current directory is: " + Directory.GetCurrentDirectory());
        Console.WriteLine();
        ModuleDefinition module = ModuleDefinition.ReadModule("BubbleSort.exe");
        CilControlFlowGraph cfg = new CilControlFlowGraph(module, "MySort", "Main");
        Console.WriteLine(cfg);
    }

    static void PrintSomeInstructionsThatTransferControl() {
        foreach (var p in typeof(OpCodes).GetFields())
        {
            var v = (OpCode)p.GetValue(null); // static classes cannot be instanced, so use null...                
            if (v.OperandType == OperandType.InlineBrTarget || 
                v.OperandType == OperandType.ShortInlineBrTarget) {
                Console.WriteLine(v.Name);
            }
        }
    }
}
