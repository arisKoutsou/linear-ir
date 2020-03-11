using System;
using System.IO;
using Mono.Cecil;
using Mono.Cecil.Cil;
using System.Linq;

class ControlFlowGraphTest
{
    static void Main(string[] args)
    {
        Console.WriteLine("Starting the testing sequence...");
        Console.WriteLine("Current directory is: " + Directory.GetCurrentDirectory());
        Console.WriteLine();

        ModuleDefinition module = ModuleDefinition.ReadModule("sample-cil/SampleCil.exe");
        CilControlFlowGraph cfg = new CilControlFlowGraph(module, "MainClass", "Switch");

        Console.WriteLine(cfg);
    }

    static void PrintVarPopInstructions() {
        foreach (var p in typeof(OpCodes).GetFields())
        {
            var v = (OpCode)p.GetValue(null); // static classes cannot be instanced, so use null...
            if (v.StackBehaviourPop == StackBehaviour.Varpop) {
                Console.WriteLine(v.Name);
            }
        }
        // --------- Result ---------
        // call
        // calli
        // ret
        // callvirt
        // newobj
    }

    static void PrintVarPushInstructions() {
        foreach (var p in typeof(OpCodes).GetFields())
        {
            var v = (OpCode)p.GetValue(null); // static classes cannot be instanced, so use null...
            if (v.StackBehaviourPush == StackBehaviour.Varpush) {
                Console.WriteLine(v.Name);
            }
        }
        // --------- Result ---------
        // call
        // calli
        // callvirt
    }

    static void TestTryCatch(ModuleDefinition moduleDefinition) {
        var methodDefinition = moduleDefinition.Types   
            .First(x => x.Name == "MainClass")
            .Methods
            .First(x => x.Name == "Return");
        
        var variables = methodDefinition.Body.Variables;
        var eHandlers = methodDefinition.Body.ExceptionHandlers;
        var instrs = methodDefinition.Body.Instructions;
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
