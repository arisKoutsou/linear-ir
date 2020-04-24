using System;
using Mono.Cecil;
using System.IO;
using System.Linq;
using Mono.Options;
using System.Collections.Generic;

public class LinearIrDump
{
  private ModuleDefinition moduleDefinition;

  public IrPrintingPolicy IrPrintingPolicy { get; set; }

  public LinearIr.Algorithm Algorithm { get; set; }

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

  public LinearIr GetLinearIr(MethodDefinition methodDefinition)
  {
    LinearIr linearIr;
    if (Algorithm == LinearIr.Algorithm.CfgTraversal)
      linearIr = new CfgTraverseLinearIr(methodDefinition);
    else
      linearIr = new SingleForwardPassLinearIr(methodDefinition);
    return linearIr;
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

  public void Dump(String typeName)
  {
    var @out = Console.Out;
    var typeDefinition = GetTypeDefinition(typeName);
    @out.WriteLine(typeDefinition.FullName);
    @out.WriteLine("{");
    IrPrintingPolicy.IncrementIndentation();
    foreach (var methodDefinition in typeDefinition.Methods)
    {
      Dump(methodDefinition);
      @out.WriteLine();
    }
    IrPrintingPolicy.DecrementIndentation();
    @out.WriteLine("}");
  }

  public void Dump(MethodDefinition methodDefinition)
  {
    GetLinearIr(methodDefinition).Dump(IrPrintingPolicy);
  }

  public void Dump(String typeName, String methodName)
  {
    var methodDefinition = GetMethodDefinition(typeName, methodName);
    Dump(methodDefinition);
  }

  public void DumpCfg(String typeName, String methodName)
  {
    var methodDefinition = GetMethodDefinition(typeName, methodName);
    CilControlFlowGraph cfg = new CilControlFlowGraph(methodDefinition);
    Console.Out.WriteLine(cfg);
  }

  private String GetIndentation()
  {
    return new String(' ', indentationLevel*IrPrintingPolicy.TabWidth);
  }

  
}