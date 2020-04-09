using System;
using Mono.Cecil;
using System.IO;
using System.Linq;
using System.Text;
using System.Collections.Generic;

public class LinearIrDump
{

  private ModuleDefinition moduleDefinition;

  public readonly IrPrintingPolicy IrPrintingPolicy;

  private int indentationLevel = 0;

  public LinearIrDump(String filename)
  {
    moduleDefinition = ModuleDefinition.ReadModule(filename);
    IrPrintingPolicy = new IrPrintingPolicy();
  }

  public LinearIrDump(String filename, IrPrintingPolicy policy)
    : this(filename)
  {
    IrPrintingPolicy = policy;
  }

  public IEnumerable<LinearIrInstruction> GetLinearIrInstructions(MethodDefinition methodDefinition)
  {
    LinearIr linearIr = new SingleForwardPassLinearIr(methodDefinition);
    return linearIr.Instructions;
  }

  public TypeDefinition GetTypeDefinition(String typeName)
  {
    var typeDefinition = moduleDefinition.Types
      .FirstOrDefault(x => x.Name == typeName);
    if (typeDefinition == null)
    {
      throw new ArgumentException(String
        .Format("Could not find type '{0}'", typeName));
    }
    return typeDefinition;
  }

  public MethodDefinition GetMethodDefinition(String typeName, String methodName)
  {
    var typeDefinition = GetTypeDefinition(typeName);
    var methodDefinition = typeDefinition.Methods
      .FirstOrDefault(x => x.Name == methodName);
    if (methodDefinition == null)
    {
      throw new ArgumentException(String
        .Format("Could not find method '{0}' in type '{1}'", methodName, typeName));
    }
    return methodDefinition;
  }

  public void Dump(TextWriter textWriter, String typeName)
  {
    var typeDefinition = GetTypeDefinition(typeName);
    textWriter.WriteLine(typeDefinition.FullName);
    textWriter.WriteLine("{");
    indentationLevel++;
    foreach (var methodDefinition in typeDefinition.Methods)
    {
      Dump(textWriter, methodDefinition);
      textWriter.WriteLine();
    }
    indentationLevel--;
    textWriter.WriteLine("}");
  }

  public void Dump(TextWriter textWriter, MethodDefinition methodDefinition)
  {
    textWriter.WriteLine(GetIndentation() + methodDefinition.FullName);
    textWriter.WriteLine(GetIndentation() + "{");
    indentationLevel++;
    foreach (var instruction in GetLinearIrInstructions(methodDefinition))
    {
      textWriter.WriteLine(GetIndentation() + instruction);
    }
    indentationLevel--;
    textWriter.WriteLine(GetIndentation() + "}");
  }

  public void Dump(TextWriter textWriter, String typeName, String methodName)
  {
    var methodDefinition = GetMethodDefinition(typeName, methodName);
    Dump(textWriter, methodDefinition);
  }

  public void Dump(String typeName)
  {
    Dump(Console.Out, typeName);
  }

  public void Dump(String typeName, String methodName)
  {
    Dump(Console.Out, typeName, methodName);
  }

  private String GetIndentation()
  {
    return new String(' ', indentationLevel*IrPrintingPolicy.TabWidth);
  }

  public static void Main(String[] args)
  {
    // TODO. Find a better way to parse command line args.
    if (args.Length < 2)
    {
      Console.WriteLine(@"Usage: 
        CilConverter.exe [MODULE_FILENAME] [TYPE_NAME] [METHOD_NAME]?");
      return;
    }

    LinearIrDump converter = new LinearIrDump(args[0]);
    if (args.Length == 2)
    {
      converter.Dump(typeName: args[1]);
    }
    else if (args.Length > 2)
    {
      converter.Dump(typeName: args[1], methodName: args[2]);
    }
  }
}