using System;
using System.Text;

namespace SampleCil
{
  class MainClass
  {
    public static void Main (string[] args)
    {
      // Console.WriteLine(Add(1024, 4096));
      StringBuilder s = new StringBuilder();
    }

    public static long Add(int x, int y) {
      if (x == 0)
        x++;
      return x + y;
    }

    public static bool IsOdd(int x) {
      return x % 2 == 1;
    }
    
    public static int IfElse(int x) {
      x = 1 / x;
      if (x > 0) {
        x = x+1;
      } else {
        x = x-1;
      }
      return x;
    }

    public static int Switch(int x) {
      switch (x) {
        case 1: return 1;
        case 2: return 2;
        case 3: return 3;
        default: return 4;
      }
    }

    // public static int TryCatch(int x) {
    //   int a = 2;
    //   try { // 0
    //     a = 1/x;
    //   } catch (System.OutOfMemoryException) {
    //     Console.WriteLine("Caught Memory ex");
    //   } catch (Exception e) { // 1
    //     Console.WriteLine("Caught exception");
    //   } finally { // 2
    //     a = 3;
    //   }
    //   return a; //  3
    // }
    
    public static int Throw(int x) {
      if (x == 0) {
        throw new InvalidOperationException();
      }
      return x;
    }

    public static int Scope(int x) {
      if (x == 6) {
        int a = 1;
        x = a;
      }
      return x;
    }

    public static int Return(int x) {
      if (x == 0)
        return x+1;
      return Return(x-1);
    }

    public static int Partition(int[] arr, int left, int right) {
      int pivot;
      pivot = arr[left];
      while (true) {
        while (arr[left] < pivot) {
          left++;
        }
        while (arr[right] > pivot) {
          right--;
        }
        if (left < right) {
          int temp = arr[right];
          arr[right] = arr[left];
          arr[left] = temp;
        } else {
          return right;
        }
      }
    }

    public static int Ternary(int x) {
      return x == 0 ? (x*x+1)/2 : x-1;
    }
    // public static (int, int, int) CSharp7Tuples(int x) {
    // 	return (x, x, x);
    // }
  }
}
