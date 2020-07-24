using System;
using Mono.Cecil;
using System.Linq;

class CecilExamples 
{
    public static void Main(string[] args)
    {
        // PrintModuleTypes();
        PrintMethodInstructions();
    }

    static void PrintModuleTypes()
    {
        ModuleDefinition module = ModuleDefinition
            .ReadModule("../sample-cil/HelloWorld.exe");
        foreach (var type in module.Types)
        {
            Console.Out.WriteLine(type.FullName);
        }
    }

    static void PrintMethodInstructions() {
        ModuleDefinition module = ModuleDefinition
            .ReadModule("../sample-cil/HelloWorld.exe");
        var methodDefinition = module.Types
            .First(x => x.Name == "Hello").Methods
            .First(x => x.Name == "Main");
        foreach (var instruction in methodDefinition.Body.Instructions)
        {
            Console.WriteLine(instruction.OpCode.Name);
        }
    }
}