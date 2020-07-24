using System;

namespace sample_cil
{
  class exception_handling
  {
    static void Main(string[] args) { }
    int FilterClause(int x) {
      try {
        return 1/x;
      } catch (DivideByZeroException) when (true) {
        return 1;
      }
    }

    static int TryCatch(int x) {
      try {
        return 1/x;
      } catch (DivideByZeroException) {
        return -1;
      } catch (Exception e) {
        Console.WriteLine(e);
        return -2;
      }
    }

    static int NestedTry(int x) {
      try {
        int a;
        try {
          a = 2/x;
        } finally {

        }
        return 1/a;
      } catch (DivideByZeroException e) when (e.Message == "") {
        Console.WriteLine(e);
        return -1;
      }
    }

    static void Empty() {
      
    }
  }
}