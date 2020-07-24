using System;
using System.Text;

namespace sample_cil
{
  class common_constructs
  {
    public static void Main (string[] args) {}

    public static long Add(int x, int y) {
      return x + y;
    }

    public static bool IsOdd(int x) {
      return x % 2 == 1;
    }
    
    public static int IfElse(int x) {
      if (x > 0) {
        return x+1;
      } else {
        return x-1;
      }
    }

    public static int Switch(int x) {
      switch (x) {
        case 1: return 1;
        case 2: return 2;
        case 3: return 3;
        default: return 4;
      }
    }
    
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

    int WhileLoop(int x) {
      int y = 0;
      while (x-- > 0) {
        y++;
      }
      return y;
    }
    
    int SquareDiff(int a, int b) {
		  return (a+b)*(a-b);
    }
    
    System.Guid ValueType() {
        System.Guid guid = Guid.NewGuid();
        return guid;
    }

    int Factorial(int n) {
      if (n == 0)
        return 1;
      return n * Factorial(n-1);
    }

    int Sum(int[] arr)
    {
      int s = 0;
      for (int i = 0; i < arr.Length; i++)
      {
        s+=arr[i];
      }
      return s;
    }

    int Instance(int x)
    {
      return Factorial(2);
    }
  }
}
