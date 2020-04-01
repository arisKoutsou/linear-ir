using System;
using Mono.Cecil;
using System.IO;
using System.Linq;
using System.Text;

public class CilConverter {

  private ModuleDefinition moduleDefinition;

  public CilConverter(String filename) {
    moduleDefinition = ModuleDefinition.ReadModule(filename);
  }

  public String GetMethodLinearIr(String typeName, String methodName) {
    CilControlFlowGraph cfg = 
      new CilControlFlowGraph(moduleDefinition, typeName, methodName);
    LinearIr linearIr = new LinearIr(cfg);
    var methodSignatureString = cfg.MethodDefinition.FullName;
    return methodSignatureString + "\n{\n" + linearIr.emit() + "}\n\n";
  }

  public String GetTypeLinearIr(String typeName) {
    var typeDefinition = moduleDefinition.Types
      .FirstOrDefault(x => x.Name == typeName);

    if (typeDefinition == null)
    {
      throw new ArgumentException(String
        .Format("Could not find type '{0}'", typeName));
    }

    StringBuilder stringBuilder = new StringBuilder();

    stringBuilder.Append(typeDefinition.FullName + "\n{\n\n");
    foreach (var methodDefinition in typeDefinition.Methods)
    {
      stringBuilder.Append(GetMethodLinearIr(typeName, methodDefinition.Name));
      stringBuilder.Append("\n");
    }
    stringBuilder.Append("}\n");

    return stringBuilder.ToString();
  }

  public static void Main(String[] args)
  {
    if (args.Length < 2)
    {
      Console.WriteLine(@"Usage: 
        CilConverter.exe [MODULE_FILENAME] [TYPE_NAME] [METHOD_NAME]?");
      return;
    }

    CilConverter converter = new CilConverter(args[0]);
    if (args.Length == 2)
    {
      Console.WriteLine(converter.GetTypeLinearIr(args[1]));
    }
    else if (args.Length > 2)
    {
      Console.WriteLine(converter.GetMethodLinearIr(args[1], args[2]));
    }
  }
}