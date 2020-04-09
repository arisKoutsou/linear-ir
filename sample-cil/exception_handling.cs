namespace sample_cil
{
  class exception_handling
  {
    static void Main(string[] args) { }
    int filter_clause(int x) {
      try {
        return 1/x;
      } catch (System.DivideByZeroException) when (true) {
        return 1;
      }
    }
  }
}