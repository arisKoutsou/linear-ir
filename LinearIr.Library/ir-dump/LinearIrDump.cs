using System;
using Mono.Cecil;
using System.Linq;

namespace LinearIr.Library
{
  /// <summary>
  ///   This class contains utilities for printing whole modules of linear ir,
  ///   as well as CFG representation of methods.
  /// </summary>
  public class LinearIrDump
  {
    /// <summary>
    ///   The corresponding module definition.
    /// </summary>
    private ModuleDefinition moduleDefinition;

    /// <summary>
    ///   Printing policy associated with this object.
    /// </summary>
    public IrPrintingPolicy IrPrintingPolicy { get; set; }

    /// <summary>
    ///   Conversion algorithm passed down to LinearIr objects.
    /// </summary>
    public String Algorithm { get; set; }

    /// <summary>
    ///   Construct an object based on a module filename.
    /// </summary>
    /// <param name="filename"> The module filename </param>
    public LinearIrDump(String filename)
    {
      moduleDefinition = ModuleDefinition.ReadModule(filename);
      IrPrintingPolicy = new IrPrintingPolicy();
    }

    /// <summary>
    ///   Construct an object based on a module filename and a printing policy.
    /// </summary>
    public LinearIrDump(String filename, IrPrintingPolicy policy)
      : this(filename)
    {
      IrPrintingPolicy = policy;
    }


    /// <summary>
    ///   Returns a linear ir object for a method definition, using the
    ///   appropriate conversion algorithm.
    /// </summary>
    /// <param name="methodDefinition"> A method definition </param>
    public LinearIr GetLinearIr(MethodDefinition methodDefinition)
    {
      LinearIr linearIr;
      if (Algorithm == "cfgtraverse")
        linearIr = new CfgTraverseLinearIr(methodDefinition);
      else
        linearIr = new ForwardPassLinearIr(methodDefinition);
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

    /// <summary>
    ///   Dump the entire module. 
    ///   All contained types, subtypes and methods are converted.
    /// </summary>
    public void Dump()
    {
      foreach (var typeDefinition in moduleDefinition.Types)
      {
        Dump(typeDefinition);
        Console.WriteLine();
      }
    }

    /// <summary>
    ///   Dumps linear ir for a type definition.
    /// </summary>
    public void Dump(TypeDefinition typeDefinition)
    {
      var @out = Console.Out;    
      @out.WriteLine(typeDefinition.FullName);
      @out.WriteLine("{");
      IrPrintingPolicy.IncrementIndentation();
      foreach (var methodDefinition in typeDefinition.Methods.Where(x => x.HasBody))
      {
        Dump(methodDefinition);
        @out.WriteLine();
      }
      IrPrintingPolicy.DecrementIndentation();
      @out.WriteLine("}");
    }

    /// <summary>
    ///   Dumps linear ir for a type in the current module.
    /// </summary>
    public void Dump(String typeName)
    {
      Dump(GetTypeDefinition(typeName));
    }

    /// <summary>
    ///   Dumps linear ir for the given method of the module.
    /// </summary>
    public void Dump(MethodDefinition methodDefinition)
    {
      GetLinearIr(methodDefinition).Dump(IrPrintingPolicy);
    }

    /// <summary>
    ///   Dumps linear ir for the given method in the given type.
    /// </summary>
    public void Dump(String typeName, String methodName)
    {
      var methodDefinition = GetMethodDefinition(typeName, methodName);
      Dump(methodDefinition);
    }

    /// <summary>
    ///   Dumps the CFG representation for the given method in the given type.
    /// </summary>
    public void DumpCfg(String typeName, String methodName)
    {
      var methodDefinition = GetMethodDefinition(typeName, methodName);
      CilControlFlowGraph cfg = new CilControlFlowGraph(methodDefinition);
      Console.Out.WriteLine(cfg);
    }
  }
}
