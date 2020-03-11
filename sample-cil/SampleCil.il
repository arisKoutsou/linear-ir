.assembly extern mscorlib
{
  .ver 4:0:0:0
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 ) // .z\V.4..
}
.assembly 'SampleCil'
{
  .custom instance void class [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::'.ctor'() =  (
		01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
		63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01       ) // ceptionThrows.

  .hash algorithm 0x00008004
  .ver  0:0:0:0
}
.module SampleCil.exe // GUID = {B7DACB3D-8531-4EAC-A8FC-7B56734D352D}


.namespace SampleCil
{
  .class private auto ansi beforefieldinit MainClass
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
    } // end of method MainClass::.ctor

    // method line 2
    .method public static hidebysig 
           default void Main (string[] args)  cil managed 
    {
        // Method begins at RVA 0x2058
	.entrypoint
	// Code size 7 (0x7)
	.maxstack 1
	.locals init (
		class [mscorlib]System.Text.StringBuilder	V_0)
	IL_0000:  newobj instance void class [mscorlib]System.Text.StringBuilder::'.ctor'()
	IL_0005:  stloc.0 
	IL_0006:  ret 
    } // end of method MainClass::Main

    // method line 3
    .method public static hidebysig 
           default int64 Add (int32 x, int32 y)  cil managed 
    {
        // Method begins at RVA 0x206b
	// Code size 16 (0x10)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  brtrue IL_000b

	IL_0006:  ldarg.0 
	IL_0007:  ldc.i4.1 
	IL_0008:  add 
	IL_0009:  starg.s 0
	IL_000b:  ldarg.0 
	IL_000c:  ldarg.1 
	IL_000d:  add 
	IL_000e:  conv.i8 
	IL_000f:  ret 
    } // end of method MainClass::Add

    // method line 4
    .method public static hidebysig 
           default bool IsOdd (int32 x)  cil managed 
    {
        // Method begins at RVA 0x207c
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldc.i4.2 
	IL_0002:  rem 
	IL_0003:  ldc.i4.1 
	IL_0004:  ceq 
	IL_0006:  ret 
    } // end of method MainClass::IsOdd

    // method line 5
    .method public static hidebysig 
           default int32 Switch (int32 x)  cil managed 
    {
        // Method begins at RVA 0x2084
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
    } // end of method MainClass::Switch

    // method line 6
    .method public static hidebysig 
           default int32 TryCatch (int32 x)  cil managed 
    {
        // Method begins at RVA 0x20a8
	// Code size 48 (0x30)
	.maxstack 2
	.locals init (
		int32	V_0,
		class [mscorlib]System.Exception	V_1)
	IL_0000:  ldc.i4.2 
	IL_0001:  stloc.0 
	.try { // 2
	  .try { // 0
	    IL_0002:  ldc.i4.1 
	    IL_0003:  ldarg.0 
	    IL_0004:  div 
	    IL_0005:  stloc.0 
	    IL_0006:  leave IL_002e

	  } // end .try 0
	  catch class [mscorlib]System.OutOfMemoryException { // 0
	    IL_000b:  pop 
	    IL_000c:  ldstr "Caught Memory ex"
	    IL_0011:  call void class [mscorlib]System.Console::WriteLine(string)
	    IL_0016:  leave IL_002e

	  } // end handler 0
	  catch class [mscorlib]System.Exception { // 1
	    IL_001b:  stloc.1 
	    IL_001c:  ldstr "Caught exception"
	    IL_0021:  call void class [mscorlib]System.Console::WriteLine(string)
	    IL_0026:  leave IL_002e

	  } // end handler 1
	} // end .try 2
	finally  { // 2
	  IL_002b:  ldc.i4.3 
	  IL_002c:  stloc.0 
	  IL_002d:  endfinally 
	} // end handler 2
	IL_002e:  ldloc.0 
	IL_002f:  ret 
    } // end of method MainClass::TryCatch

    // method line 7
    .method public static hidebysig 
           default int32 Scope (int32 x)  cil managed 
    {
        // Method begins at RVA 0x210c
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
    } // end of method MainClass::Scope

    // method line 8
    .method public static hidebysig 
           default int32 Return (int32 x)  cil managed 
    {
        // Method begins at RVA 0x2126
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
	IL_000d:  call int32 class SampleCil.MainClass::Return(int32)
	IL_0012:  ret 
    } // end of method MainClass::Return

  } // end of class SampleCil.MainClass
}

