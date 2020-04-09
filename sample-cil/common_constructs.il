.assembly extern mscorlib
{
  .ver 4:0:0:0
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 ) // .z\V.4..
}
.assembly 'common_constructs'
{
  .custom instance void class [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::'.ctor'() =  (
		01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
		63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01       ) // ceptionThrows.

  .hash algorithm 0x00008004
  .ver  0:0:0:0
}
.module common_constructs.exe // GUID = {B86E3F82-9943-4ABF-952E-E4A64C75AF1A}


.namespace sample_cil
{
  .class private auto ansi beforefieldinit common_constructs
  	extends [mscorlib]System.Object
  {

    // method line 1
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' ()  cil managed 
    {
        // Method begins at RVA 0x2050
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance void object::'.ctor'()
	IL_0006:  ret 
    } // end of method common_constructs::.ctor

    // method line 2
    .method public static hidebysig 
           default void Main (string[] args)  cil managed 
    {
        // Method begins at RVA 0x2058
	.entrypoint
	// Code size 1 (0x1)
	.maxstack 8
	IL_0000:  ret 
    } // end of method common_constructs::Main

    // method line 3
    .method public static hidebysig 
           default int64 Add (int32 x, int32 y)  cil managed 
    {
        // Method begins at RVA 0x205a
	// Code size 5 (0x5)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  add 
	IL_0003:  conv.i8 
	IL_0004:  ret 
    } // end of method common_constructs::Add

    // method line 4
    .method public static hidebysig 
           default bool IsOdd (int32 x)  cil managed 
    {
        // Method begins at RVA 0x2060
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldc.i4.2 
	IL_0002:  rem 
	IL_0003:  ldc.i4.1 
	IL_0004:  ceq 
	IL_0006:  ret 
    } // end of method common_constructs::IsOdd

    // method line 5
    .method public static hidebysig 
           default int32 IfElse (int32 x)  cil managed 
    {
        // Method begins at RVA 0x2068
	// Code size 15 (0xf)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldc.i4.0 
	IL_0002:  ble IL_000b

	IL_0007:  ldarg.0 
	IL_0008:  ldc.i4.1 
	IL_0009:  add 
	IL_000a:  ret 
	IL_000b:  ldarg.0 
	IL_000c:  ldc.i4.1 
	IL_000d:  sub 
	IL_000e:  ret 
    } // end of method common_constructs::IfElse

    // method line 6
    .method public static hidebysig 
           default int32 Switch (int32 x)  cil managed 
    {
        // Method begins at RVA 0x2078
	// Code size 33 (0x21)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldc.i4.1 
	IL_0002:  sub 
	IL_0003:  switch (
	  IL_0019,
	  IL_001b,
	  IL_001d)
	IL_0014:  br IL_001f

	IL_0019:  ldc.i4.1 
	IL_001a:  ret 
	IL_001b:  ldc.i4.2 
	IL_001c:  ret 
	IL_001d:  ldc.i4.3 
	IL_001e:  ret 
	IL_001f:  ldc.i4.4 
	IL_0020:  ret 
    } // end of method common_constructs::Switch

    // method line 7
    .method public static hidebysig 
           default int32 Throw (int32 x)  cil managed 
    {
        // Method begins at RVA 0x209a
	// Code size 14 (0xe)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  brtrue IL_000c

	IL_0006:  newobj instance void class [mscorlib]System.InvalidOperationException::'.ctor'()
	IL_000b:  throw 
	IL_000c:  ldarg.0 
	IL_000d:  ret 
    } // end of method common_constructs::Throw

    // method line 8
    .method public static hidebysig 
           default int32 Scope (int32 x)  cil managed 
    {
        // Method begins at RVA 0x20ac
	// Code size 14 (0xe)
	.maxstack 2
	.locals init (
		int32	V_0)
	IL_0000:  ldarg.0 
	IL_0001:  ldc.i4.6 
	IL_0002:  bne.un IL_000c

	IL_0007:  ldc.i4.1 
	IL_0008:  stloc.0 
	IL_0009:  ldloc.0 
	IL_000a:  starg.s 0
	IL_000c:  ldarg.0 
	IL_000d:  ret 
    } // end of method common_constructs::Scope

    // method line 9
    .method public static hidebysig 
           default int32 Return (int32 x)  cil managed 
    {
        // Method begins at RVA 0x20c6
	// Code size 19 (0x13)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  brtrue IL_000a

	IL_0006:  ldarg.0 
	IL_0007:  ldc.i4.1 
	IL_0008:  add 
	IL_0009:  ret 
	IL_000a:  ldarg.0 
	IL_000b:  ldc.i4.1 
	IL_000c:  sub 
	IL_000d:  call int32 class sample_cil.common_constructs::Return(int32)
	IL_0012:  ret 
    } // end of method common_constructs::Return

    // method line 10
    .method public static hidebysig 
           default int32 Partition (int32[] arr, int32 left, int32 right)  cil managed 
    {
        // Method begins at RVA 0x20dc
	// Code size 75 (0x4b)
	.maxstack 4
	.locals init (
		int32	V_0,
		int32	V_1)
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  ldelem.i4 
	IL_0003:  stloc.0 
	IL_0004:  br IL_000e

	IL_0009:  ldarg.1 
	IL_000a:  ldc.i4.1 
	IL_000b:  add 
	IL_000c:  starg.s 1
	IL_000e:  ldarg.0 
	IL_000f:  ldarg.1 
	IL_0010:  ldelem.i4 
	IL_0011:  ldloc.0 
	IL_0012:  blt IL_0009

	IL_0017:  br IL_0021

	IL_001c:  ldarg.2 
	IL_001d:  ldc.i4.1 
	IL_001e:  sub 
	IL_001f:  starg.s 2
	IL_0021:  ldarg.0 
	IL_0022:  ldarg.2 
	IL_0023:  ldelem.i4 
	IL_0024:  ldloc.0 
	IL_0025:  bgt IL_001c

	IL_002a:  ldarg.1 
	IL_002b:  ldarg.2 
	IL_002c:  bge IL_0044

	IL_0031:  ldarg.0 
	IL_0032:  ldarg.2 
	IL_0033:  ldelem.i4 
	IL_0034:  stloc.1 
	IL_0035:  ldarg.0 
	IL_0036:  ldarg.2 
	IL_0037:  ldarg.0 
	IL_0038:  ldarg.1 
	IL_0039:  ldelem.i4 
	IL_003a:  stelem.i4 
	IL_003b:  ldarg.0 
	IL_003c:  ldarg.1 
	IL_003d:  ldloc.1 
	IL_003e:  stelem.i4 
	IL_003f:  br IL_0046

	IL_0044:  ldarg.2 
	IL_0045:  ret 
	IL_0046:  br IL_0004

    } // end of method common_constructs::Partition

    // method line 11
    .method public static hidebysig 
           default int32 Ternary (int32 x)  cil managed 
    {
        // Method begins at RVA 0x2133
	// Code size 22 (0x16)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  brtrue IL_0012

	IL_0006:  ldarg.0 
	IL_0007:  ldarg.0 
	IL_0008:  mul 
	IL_0009:  ldc.i4.1 
	IL_000a:  add 
	IL_000b:  ldc.i4.2 
	IL_000c:  div 
	IL_000d:  br IL_0015

	IL_0012:  ldarg.0 
	IL_0013:  ldc.i4.1 
	IL_0014:  sub 
	IL_0015:  ret 
    } // end of method common_constructs::Ternary

    // method line 12
    .method private hidebysig 
           instance default int32 WhileLoop (int32 x)  cil managed 
    {
        // Method begins at RVA 0x214c
	// Code size 25 (0x19)
	.maxstack 3
	.locals init (
		int32	V_0)
	IL_0000:  ldc.i4.0 
	IL_0001:  stloc.0 
	IL_0002:  br IL_000b

	IL_0007:  ldloc.0 
	IL_0008:  ldc.i4.1 
	IL_0009:  add 
	IL_000a:  stloc.0 
	IL_000b:  ldarg.1 
	IL_000c:  dup 
	IL_000d:  ldc.i4.1 
	IL_000e:  sub 
	IL_000f:  starg.s 1
	IL_0011:  ldc.i4.0 
	IL_0012:  bgt IL_0007

	IL_0017:  ldloc.0 
	IL_0018:  ret 
    } // end of method common_constructs::WhileLoop

  } // end of class sample_cil.common_constructs
}

