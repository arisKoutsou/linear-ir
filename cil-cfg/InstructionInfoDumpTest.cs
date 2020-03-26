using System;
using System.IO;
using Mono.Cecil;
using Mono.Cecil.Cil;

class InstructionInfoDumpTest
{
    static void Main(string[] args)
    {
        Console.WriteLine("Starting the testing sequence...");
        Console.WriteLine("Current directory is: " + Directory.GetCurrentDirectory());
        Console.WriteLine();

        PrintControlFlow();
    }

    private static void PrintControlFlow() {
        Console.WriteLine("Instruction ControlFlow StakBehaviour");
        foreach (var p in typeof(OpCodes).GetFields())
        {
            var v = (OpCode)p.GetValue(null); // static classes cannot be instanced, so use null...
            Console.WriteLine(String.Join(" ", v.Name, v.FlowControl, 
                String.Format("[{0},{1}]", v.StackBehaviourPop, v.StackBehaviourPush)));
        }
    }
}