public class IrPrintingPolicy
{
  public readonly int TabWidth;
  public IrPrintingPolicy(int tabWidth)
  {
    TabWidth = tabWidth;
  }

  public IrPrintingPolicy()
    :this(2)
  {
    
  }
}