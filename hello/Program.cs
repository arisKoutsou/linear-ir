using System;

namespace hello
{
	class MainClass
	{
		public static void Main (string[] args)
		{
			Console.WriteLine(Add(1024, 4096));
		}

		public static long Add(int x, int y) {
			if (x == 0)
				x++;
			return x + y;
		}

		public static bool IsOdd(int x) {
			return x % 2 == 1;
		}
	}
}
