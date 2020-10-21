using System;

namespace LinearIr.Library
{
  /// <summary>
  ///   Container class for some printing configurations about 
  ///   linear ir assembly format.
  /// </summary>
  public class IrPrintingPolicy
  {
    /// <summary>
    ///   Indentation width. Used when entering class/method definitions.
    /// </summary>
    public int TabWidth = 2;

    /// <summary>
    ///   Enables colored output.
    /// </summary>
    public bool ColorEnabled = false;

    /// <summary>
    ///   Indentation level, counted in tabs.
    /// </summary>
    public int IndentationLevel = 0;

    /// <summary>
    ///   Get's the indentation string consisting of multiple space characters.
    /// </summary>
    public String IndentationString { get; private set; } = String.Empty;

    /// <summary>
    ///   When called, signals an entry in some block.
    /// </summary>
    public void IncrementIndentation() {
      IndentationLevel++;
      IndentationString = new String(' ', TabWidth*IndentationLevel);
    }

    /// <summary>
    ///   When called, signals an exit from some block.
    /// </summary>
    public void DecrementIndentation() {
      IndentationLevel--;
      IndentationString = new String(' ', TabWidth*IndentationLevel);
    } 
  }
}
