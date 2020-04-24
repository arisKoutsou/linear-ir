using System;

public class IrPrintingPolicy
{
  public int TabWidth = 2;
  public bool ColorEnabled = false;
  public int IndentationLevel = 0;

  public String IndentationString { get; private set; } = String.Empty;

  public void IncrementIndentation() {
    IndentationLevel++;
    IndentationString = new String(' ', TabWidth*IndentationLevel);
  }

  public void DecrementIndentation() {
    IndentationLevel--;
    IndentationString = new String(' ', TabWidth*IndentationLevel);
  } 
}