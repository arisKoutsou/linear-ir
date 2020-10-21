using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using Mono.Options;
using LinearIr.Library;

namespace LinearIr.Application
{
  /// <summary>
  ///   Entry point for the console appliction. This class implements
  ///   the command line options and uses LinearIrDump to perfrom the conversion.
  /// </summary>
  public static class Application
  {
    static bool showHelp = false;
    static bool dumpCfg = false;
    static String moduleFilename = null;
    static String typeName = null;
    static String methodName = null;
    static String dumpFile = null;
    static String algorithm = "forwardpass";
    static IrPrintingPolicy printingPolicy = new IrPrintingPolicy();

    static OptionSet optionSet = new OptionSet()
      {
        { "t|type=", "The name of the type to look for methods",
          v => typeName = v },
        { "m|method=", "Name of method to process",
          v => methodName = v },
        { "o|output=",  "Dump the output to the specified file, if none then dump to stdout", 
          v => dumpFile = v },
        { "a|algorithm=",  "Select the conversion algorithm: one of 'cfgtraverse'(default) or 'forwardpass'", 
          v => algorithm = "forwardpass" },
        { "dump-cfg", "Dump the cfg for the specified method and exit",
          v => dumpCfg = true },
        { "color", "Enable colored output for more readable code",
          v => printingPolicy.ColorEnabled = true },
        { "tab-width=", "Set the tab width(number of space characters), default is 2",
          v => printingPolicy.TabWidth = int.Parse(v) },
        { "h|help",  "Display help and exit",
          v => showHelp = true },
      };

    /// <summary>
    ///   Displays the help text.
    /// </summary>
    /// <param name="optionSet"> Option set to display help for. </param>
    static void ShowHelp(OptionSet optionSet)
    {
      Console.WriteLine("Usage: LinearIrDump [OPTIONS]... MODULE_FILE");
      Console.WriteLine("Convert the stack-based IR code in MODULE_FILE to a linear representation.");
      Console.WriteLine();
      Console.WriteLine("Options:");
      optionSet.WriteOptionDescriptions(Console.Out);
    }
    
    /// <summary>
    ///   Entry point.
    /// </summary>
    public static void Main(String[] args)
    {
      List<String> extra;
      try {
        extra = optionSet.Parse(args);
      }
      catch (OptionException e) {
        Console.Write ("LinearIrDump: ");
        Console.WriteLine (e.Message);
        Console.WriteLine ("Try `LinearIrDump --help' for more information.");
        return;
      }

      if (showHelp)
      {
        ShowHelp(optionSet);
        return;
      }

      if (!extra.Any())
      {
        Console.WriteLine("No modules specified... Exiting.");
        return;
      } else {
        moduleFilename = extra.First();
      }

      LinearIrDump linearIrDump = new LinearIrDump(moduleFilename, printingPolicy);
      linearIrDump.Algorithm = algorithm;

      using (TextWriter writer = dumpFile == null ?
        Console.Out : new StreamWriter(dumpFile))
      {
        Console.SetOut(writer);
        if (dumpCfg)
        {
          if (methodName == null)
          {
            Console.WriteLine("Missing method... Exiting");
            return;
          }
          linearIrDump.DumpCfg(typeName, methodName);
          return;
        }

        if (typeName == null && methodName == null)
        {
          linearIrDump.Dump();
        } else if (typeName == null && methodName != null)
        {
          Console.WriteLine("No type specified... Exiting.");
          return;
        } else if (typeName != null && methodName == null)
        {
          linearIrDump.Dump(typeName);
        } else
        {
          linearIrDump.Dump(typeName, methodName);
        }
      }
    }
  }
}
