.assembly extern mscorlib
{
  .ver 4:0:0:0
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 ) // .z\V.4..
}
.assembly 'exception_handling'
{
  .custom instance void class [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::'.ctor'() =  (
		01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
		63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01       ) // ceptionThrows.

  .hash algorithm 0x00008004
  .ver  0:0:0:0
}
.module exception_handling.exe // GUID = {4CC2FE08-00C3-48DC-9E01-98CED9198DCC}


.namespace sample_cil
{
  .class private auto ansi beforefieldinit exception_handling
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
    } // end of method exception_handling::.ctor

    // method line 2
    .method private static hidebysig 
           default void Main (string[] args)  cil managed 
    {
        // Method begins at RVA 0x2058
	.entrypoint
	// Code size 1 (0x1)
	.maxstack 8
	IL_0000:  ret 
    } // end of method exception_handling::Main

    // method line 3
    .method private hidebysig 
           instance default int32 filter_clause (int32 x)  cil managed 
    {
        // Method begins at RVA 0x205c
	// Code size 35 (0x23)
	.maxstack 2
	.locals init (
		int32	V_0)
	.try { // 0
	  IL_0000:  ldc.i4.1 
	  IL_0001:  ldarg.1 
	  IL_0002:  div 
	  IL_0003:  stloc.0 
	  IL_0004:  leave IL_0021

	} // end .try 0
	filter {
	  IL_0009:  isinst [mscorlib]System.DivideByZeroException
	  IL_000e:  brtrue.s IL_0016

	  IL_0010:  ldc.i4.0 
	  IL_0011:  br IL_0017

	  IL_0016:  ldc.i4.1 
	  IL_0017:  endfilter 
	} { // 0
	  IL_0019:  pop 
	  IL_001a:  ldc.i4.1 
	  IL_001b:  stloc.0 
	  IL_001c:  leave IL_0021

	} // end handler 0
	IL_0021:  ldloc.0 
	IL_0022:  ret 
    } // end of method exception_handling::filter_clause

  } // end of class sample_cil.exception_handling
}

