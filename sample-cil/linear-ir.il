.assembly extern Mono.Cecil
{
  .ver 0:11:2:0
  .publickeytoken = (50 CE BF 1C CE B9 D0 5E ) // P......^
}
.assembly extern mscorlib
{
  .ver 4:0:0:0
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 ) // .z\V.4..
}
.assembly extern Mono.Options
{
  .ver 6:0:0:0
}
.assembly extern System.Core
{
  .ver 4:0:0:0
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 ) // .z\V.4..
}
.assembly 'LinearIr'
{
  .custom instance void class [mscorlib]System.Runtime.CompilerServices.ExtensionAttribute::'.ctor'() =  (01 00 00 00 ) // ....

  .custom instance void class [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::'.ctor'() =  (
		01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
		63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01       ) // ceptionThrows.

  .hash algorithm 0x00008004
  .ver  0:0:0:0
}
.module LinearIr.exe // GUID = {D2CCF05E-31F5-47C2-BCF5-7C38C857563E}


  .class public auto ansi abstract beforefieldinit LinearIr
  	extends [mscorlib]System.Object
  {
    .field  family  int32 evaluationStackSize
    .field  private initonly  class [Mono.Cecil]Mono.Cecil.MethodDefinition '<MethodDefinition>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  class [mscorlib]System.Collections.Generic.IEnumerable`1<class LinearIrInstruction> '<Instructions>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  int32 '<MaxRegisterCount>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........


    // method line 1
    .method family hidebysig specialname rtspecialname 
           instance default void '.ctor' (class [Mono.Cecil]Mono.Cecil.MethodDefinition methodDefinition)  cil managed 
    {
        // Method begins at RVA 0x2050
	// Code size 21 (0x15)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldc.i4.0 
	IL_0002:  stfld int32 LinearIr::evaluationStackSize
	IL_0007:  ldarg.0 
	IL_0008:  call instance void object::'.ctor'()
	IL_000d:  ldarg.0 
	IL_000e:  ldarg.1 
	IL_000f:  stfld class [Mono.Cecil]Mono.Cecil.MethodDefinition LinearIr::'<MethodDefinition>k__BackingField'
	IL_0014:  ret 
    } // end of method LinearIr::.ctor

    // method line 2
    .method public hidebysig specialname 
           instance default class [Mono.Cecil]Mono.Cecil.MethodDefinition get_MethodDefinition ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2066
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld class [Mono.Cecil]Mono.Cecil.MethodDefinition LinearIr::'<MethodDefinition>k__BackingField'
	IL_0006:  ret 
    } // end of method LinearIr::get_MethodDefinition

    // method line 3
    .method public hidebysig specialname 
           instance default class [mscorlib]System.Collections.Generic.IEnumerable`1<class LinearIrInstruction> get_Instructions ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x206e
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld class [mscorlib]System.Collections.Generic.IEnumerable`1<class LinearIrInstruction> LinearIr::'<Instructions>k__BackingField'
	IL_0006:  ret 
    } // end of method LinearIr::get_Instructions

    // method line 4
    .method family hidebysig specialname 
           instance default void set_Instructions (class [mscorlib]System.Collections.Generic.IEnumerable`1<class LinearIrInstruction> 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2076
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld class [mscorlib]System.Collections.Generic.IEnumerable`1<class LinearIrInstruction> LinearIr::'<Instructions>k__BackingField'
	IL_0007:  ret 
    } // end of method LinearIr::set_Instructions

    // method line 5
    .method public hidebysig specialname 
           instance default int32 get_MaxRegisterCount ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x207f
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld int32 LinearIr::'<MaxRegisterCount>k__BackingField'
	IL_0006:  ret 
    } // end of method LinearIr::get_MaxRegisterCount

    // method line 6
    .method family hidebysig specialname 
           instance default void set_MaxRegisterCount (int32 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2087
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld int32 LinearIr::'<MaxRegisterCount>k__BackingField'
	IL_0007:  ret 
    } // end of method LinearIr::set_MaxRegisterCount

    // method line 7
    .method family hidebysig 
           instance default int32[] GetInstructionInputRegisters (class [Mono.Cecil]Mono.Cecil.Cil.Instruction instruction)  cil managed 
    {
        // Method begins at RVA 0x2090
	// Code size 636 (0x27c)
	.maxstack 5
	.locals init (
		int32[]	V_0,
		valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode	V_1,
		valuetype [Mono.Cecil]Mono.Cecil.Cil.StackBehaviour	V_2,
		int32	V_3,
		class [Mono.Cecil]Mono.Cecil.MethodReference	V_4,
		int32	V_5,
		bool	V_6)
	IL_0000:  ldnull 
	IL_0001:  stloc.0 
	IL_0002:  ldarg.1 
	IL_0003:  callvirt instance valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode class [Mono.Cecil]Mono.Cecil.Cil.Instruction::get_OpCode()
	IL_0008:  stloc.1 
	IL_0009:  ldloca.s 1
	IL_000b:  call instance valuetype [Mono.Cecil]Mono.Cecil.Cil.StackBehaviour valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode::get_StackBehaviourPop()
	IL_0010:  stloc.2 
	IL_0011:  ldloc.2 
	IL_0012:  switch (
	  IL_008c,
	  IL_0091,
	  IL_00b1,
	  IL_0091,
	  IL_00b1,
	  IL_00b1,
	  IL_00b1,
	  IL_00e5,
	  IL_00b1,
	  IL_00b1,
	  IL_0091,
	  IL_00b1,
	  IL_00b1,
	  IL_00e5,
	  IL_00e5,
	  IL_00e5,
	  IL_00e5,
	  IL_00e5,
	  IL_012d,
	  IL_025e,
	  IL_025e,
	  IL_025e,
	  IL_025e,
	  IL_025e,
	  IL_025e,
	  IL_025e,
	  IL_025e,
	  IL_0139)
	IL_0087:  br IL_025e

	IL_008c:  br IL_0269

	IL_0091:  ldc.i4.1 
	IL_0092:  newarr [mscorlib]System.Int32
	IL_0097:  stloc.0 
	IL_0098:  ldloc.0 
	IL_0099:  ldc.i4.0 
	IL_009a:  ldarg.0 
	IL_009b:  dup 
	IL_009c:  ldfld int32 LinearIr::evaluationStackSize
	IL_00a1:  ldc.i4.1 
	IL_00a2:  sub 
	IL_00a3:  dup 
	IL_00a4:  stloc.3 
	IL_00a5:  stfld int32 LinearIr::evaluationStackSize
	IL_00aa:  ldloc.3 
	IL_00ab:  stelem.i4 
	IL_00ac:  br IL_0269

	IL_00b1:  ldc.i4.2 
	IL_00b2:  newarr [mscorlib]System.Int32
	IL_00b7:  stloc.0 
	IL_00b8:  ldloc.0 
	IL_00b9:  ldc.i4.1 
	IL_00ba:  ldarg.0 
	IL_00bb:  dup 
	IL_00bc:  ldfld int32 LinearIr::evaluationStackSize
	IL_00c1:  ldc.i4.1 
	IL_00c2:  sub 
	IL_00c3:  dup 
	IL_00c4:  stloc.3 
	IL_00c5:  stfld int32 LinearIr::evaluationStackSize
	IL_00ca:  ldloc.3 
	IL_00cb:  stelem.i4 
	IL_00cc:  ldloc.0 
	IL_00cd:  ldc.i4.0 
	IL_00ce:  ldarg.0 
	IL_00cf:  dup 
	IL_00d0:  ldfld int32 LinearIr::evaluationStackSize
	IL_00d5:  ldc.i4.1 
	IL_00d6:  sub 
	IL_00d7:  dup 
	IL_00d8:  stloc.3 
	IL_00d9:  stfld int32 LinearIr::evaluationStackSize
	IL_00de:  ldloc.3 
	IL_00df:  stelem.i4 
	IL_00e0:  br IL_0269

	IL_00e5:  ldc.i4.3 
	IL_00e6:  newarr [mscorlib]System.Int32
	IL_00eb:  stloc.0 
	IL_00ec:  ldloc.0 
	IL_00ed:  ldc.i4.2 
	IL_00ee:  ldarg.0 
	IL_00ef:  dup 
	IL_00f0:  ldfld int32 LinearIr::evaluationStackSize
	IL_00f5:  ldc.i4.1 
	IL_00f6:  sub 
	IL_00f7:  dup 
	IL_00f8:  stloc.3 
	IL_00f9:  stfld int32 LinearIr::evaluationStackSize
	IL_00fe:  ldloc.3 
	IL_00ff:  stelem.i4 
	IL_0100:  ldloc.0 
	IL_0101:  ldc.i4.1 
	IL_0102:  ldarg.0 
	IL_0103:  dup 
	IL_0104:  ldfld int32 LinearIr::evaluationStackSize
	IL_0109:  ldc.i4.1 
	IL_010a:  sub 
	IL_010b:  dup 
	IL_010c:  stloc.3 
	IL_010d:  stfld int32 LinearIr::evaluationStackSize
	IL_0112:  ldloc.3 
	IL_0113:  stelem.i4 
	IL_0114:  ldloc.0 
	IL_0115:  ldc.i4.0 
	IL_0116:  ldarg.0 
	IL_0117:  dup 
	IL_0118:  ldfld int32 LinearIr::evaluationStackSize
	IL_011d:  ldc.i4.1 
	IL_011e:  sub 
	IL_011f:  dup 
	IL_0120:  stloc.3 
	IL_0121:  stfld int32 LinearIr::evaluationStackSize
	IL_0126:  ldloc.3 
	IL_0127:  stelem.i4 
	IL_0128:  br IL_0269

	IL_012d:  ldarg.0 
	IL_012e:  ldc.i4.0 
	IL_012f:  stfld int32 LinearIr::evaluationStackSize
	IL_0134:  br IL_0269

	IL_0139:  ldarg.1 
	IL_013a:  callvirt instance valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode class [Mono.Cecil]Mono.Cecil.Cil.Instruction::get_OpCode()
	IL_013f:  ldsfld valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode [Mono.Cecil]Mono.Cecil.Cil.OpCodes::Call
	IL_0144:  call bool valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode::op_Equality(valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode, valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode)
	IL_0149:  brtrue IL_018d

	IL_014e:  ldarg.1 
	IL_014f:  callvirt instance valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode class [Mono.Cecil]Mono.Cecil.Cil.Instruction::get_OpCode()
	IL_0154:  ldsfld valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode [Mono.Cecil]Mono.Cecil.Cil.OpCodes::Calli
	IL_0159:  call bool valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode::op_Equality(valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode, valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode)
	IL_015e:  brtrue IL_018d

	IL_0163:  ldarg.1 
	IL_0164:  callvirt instance valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode class [Mono.Cecil]Mono.Cecil.Cil.Instruction::get_OpCode()
	IL_0169:  ldsfld valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode [Mono.Cecil]Mono.Cecil.Cil.OpCodes::Callvirt
	IL_016e:  call bool valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode::op_Equality(valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode, valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode)
	IL_0173:  brtrue IL_018d

	IL_0178:  ldarg.1 
	IL_0179:  callvirt instance valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode class [Mono.Cecil]Mono.Cecil.Cil.Instruction::get_OpCode()
	IL_017e:  ldsfld valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode [Mono.Cecil]Mono.Cecil.Cil.OpCodes::Newobj
	IL_0183:  call bool valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode::op_Equality(valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode, valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode)
	IL_0188:  brfalse IL_01e9

	IL_018d:  ldarg.1 
	IL_018e:  callvirt instance object class [Mono.Cecil]Mono.Cecil.Cil.Instruction::get_Operand()
	IL_0193:  isinst [Mono.Cecil]Mono.Cecil.MethodReference
	IL_0198:  stloc.s 4
	IL_019a:  ldloc.s 4
	IL_019c:  callvirt instance class [Mono.Cecil]Mono.Collections.Generic.Collection`1<class [Mono.Cecil]Mono.Cecil.ParameterDefinition> class [Mono.Cecil]Mono.Cecil.MethodReference::get_Parameters()
	IL_01a1:  callvirt instance int32 class [Mono.Cecil]Mono.Collections.Generic.Collection`1<class [Mono.Cecil]Mono.Cecil.ParameterDefinition>::get_Count()
	IL_01a6:  newarr [mscorlib]System.Int32
	IL_01ab:  stloc.0 
	IL_01ac:  ldloc.s 4
	IL_01ae:  callvirt instance class [Mono.Cecil]Mono.Collections.Generic.Collection`1<class [Mono.Cecil]Mono.Cecil.ParameterDefinition> class [Mono.Cecil]Mono.Cecil.MethodReference::get_Parameters()
	IL_01b3:  callvirt instance int32 class [Mono.Cecil]Mono.Collections.Generic.Collection`1<class [Mono.Cecil]Mono.Cecil.ParameterDefinition>::get_Count()
	IL_01b8:  ldc.i4.1 
	IL_01b9:  sub 
	IL_01ba:  stloc.s 5
	IL_01bc:  br IL_01dc

	IL_01c1:  ldloc.0 
	IL_01c2:  ldloc.s 5
	IL_01c4:  ldarg.0 
	IL_01c5:  dup 
	IL_01c6:  ldfld int32 LinearIr::evaluationStackSize
	IL_01cb:  ldc.i4.1 
	IL_01cc:  sub 
	IL_01cd:  dup 
	IL_01ce:  stloc.3 
	IL_01cf:  stfld int32 LinearIr::evaluationStackSize
	IL_01d4:  ldloc.3 
	IL_01d5:  stelem.i4 
	IL_01d6:  ldloc.s 5
	IL_01d8:  ldc.i4.1 
	IL_01d9:  sub 
	IL_01da:  stloc.s 5
	IL_01dc:  ldloc.s 5
	IL_01de:  ldc.i4.0 
	IL_01df:  bge IL_01c1

	IL_01e4:  br IL_0259

	IL_01e9:  ldarg.1 
	IL_01ea:  callvirt instance valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode class [Mono.Cecil]Mono.Cecil.Cil.Instruction::get_OpCode()
	IL_01ef:  ldsfld valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode [Mono.Cecil]Mono.Cecil.Cil.OpCodes::Ret
	IL_01f4:  call bool valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode::op_Equality(valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode, valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode)
	IL_01f9:  brfalse IL_024e

	IL_01fe:  ldarg.0 
	IL_01ff:  call instance class [Mono.Cecil]Mono.Cecil.MethodDefinition class LinearIr::get_MethodDefinition()
	IL_0204:  callvirt instance class [Mono.Cecil]Mono.Cecil.TypeReference class [Mono.Cecil]Mono.Cecil.MethodReference::get_ReturnType()
	IL_0209:  callvirt instance string class [Mono.Cecil]Mono.Cecil.MemberReference::get_FullName()
	IL_020e:  ldstr "System.Void"
	IL_0213:  call bool string::op_Equality(string, string)
	IL_0218:  stloc.s 6
	IL_021a:  ldloc.s 6
	IL_021c:  brfalse IL_0227

	IL_0221:  ldc.i4.0 
	IL_0222:  br IL_0228

	IL_0227:  ldc.i4.1 
	IL_0228:  newarr [mscorlib]System.Int32
	IL_022d:  stloc.0 
	IL_022e:  ldloc.s 6
	IL_0230:  brtrue IL_0249

	IL_0235:  ldloc.0 
	IL_0236:  ldc.i4.0 
	IL_0237:  ldarg.0 
	IL_0238:  dup 
	IL_0239:  ldfld int32 LinearIr::evaluationStackSize
	IL_023e:  ldc.i4.1 
	IL_023f:  sub 
	IL_0240:  dup 
	IL_0241:  stloc.3 
	IL_0242:  stfld int32 LinearIr::evaluationStackSize
	IL_0247:  ldloc.3 
	IL_0248:  stelem.i4 
	IL_0249:  br IL_0259

	IL_024e:  ldstr "Bad VarPop case"
	IL_0253:  newobj instance void class [mscorlib]System.InvalidOperationException::'.ctor'(string)
	IL_0258:  throw 
	IL_0259:  br IL_0269

	IL_025e:  ldstr "Invalid Stack Behaviour"
	IL_0263:  newobj instance void class [mscorlib]System.InvalidOperationException::'.ctor'(string)
	IL_0268:  throw 
	IL_0269:  ldloc.0 
	IL_026a:  brfalse IL_0275

	IL_026f:  ldloc.0 
	IL_0270:  br IL_027b

	IL_0275:  ldc.i4.0 
	IL_0276:  newarr [mscorlib]System.Int32
	IL_027b:  ret 
    } // end of method LinearIr::GetInstructionInputRegisters

    // method line 8
    .method family hidebysig 
           instance default int32[] GetInstructionOutputRegisters (class [Mono.Cecil]Mono.Cecil.Cil.Instruction i)  cil managed 
    {
        // Method begins at RVA 0x2318
	// Code size 308 (0x134)
	.maxstack 5
	.locals init (
		int32[]	V_0,
		valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode	V_1,
		valuetype [Mono.Cecil]Mono.Cecil.Cil.StackBehaviour	V_2,
		int32	V_3,
		class [Mono.Cecil]Mono.Cecil.MethodReference	V_4,
		bool	V_5)
	IL_0000:  ldnull 
	IL_0001:  stloc.0 
	IL_0002:  ldarg.1 
	IL_0003:  callvirt instance valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode class [Mono.Cecil]Mono.Cecil.Cil.Instruction::get_OpCode()
	IL_0008:  stloc.1 
	IL_0009:  ldloca.s 1
	IL_000b:  call instance valuetype [Mono.Cecil]Mono.Cecil.Cil.StackBehaviour valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode::get_StackBehaviourPush()
	IL_0010:  stloc.2 
	IL_0011:  ldloc.2 
	IL_0012:  ldc.i4.s 0x13
	IL_0014:  sub 
	IL_0015:  switch (
	  IL_0047,
	  IL_004c,
	  IL_006c,
	  IL_004c,
	  IL_004c,
	  IL_004c,
	  IL_004c,
	  IL_004c,
	  IL_00f9,
	  IL_00a0)
	IL_0042:  br IL_00f9

	IL_0047:  br IL_0104

	IL_004c:  ldc.i4.1 
	IL_004d:  newarr [mscorlib]System.Int32
	IL_0052:  stloc.0 
	IL_0053:  ldloc.0 
	IL_0054:  ldc.i4.0 
	IL_0055:  ldarg.0 
	IL_0056:  dup 
	IL_0057:  ldfld int32 LinearIr::evaluationStackSize
	IL_005c:  dup 
	IL_005d:  stloc.3 
	IL_005e:  ldc.i4.1 
	IL_005f:  add 
	IL_0060:  stfld int32 LinearIr::evaluationStackSize
	IL_0065:  ldloc.3 
	IL_0066:  stelem.i4 
	IL_0067:  br IL_0104

	IL_006c:  ldc.i4.2 
	IL_006d:  newarr [mscorlib]System.Int32
	IL_0072:  stloc.0 
	IL_0073:  ldloc.0 
	IL_0074:  ldc.i4.1 
	IL_0075:  ldarg.0 
	IL_0076:  dup 
	IL_0077:  ldfld int32 LinearIr::evaluationStackSize
	IL_007c:  dup 
	IL_007d:  stloc.3 
	IL_007e:  ldc.i4.1 
	IL_007f:  add 
	IL_0080:  stfld int32 LinearIr::evaluationStackSize
	IL_0085:  ldloc.3 
	IL_0086:  stelem.i4 
	IL_0087:  ldloc.0 
	IL_0088:  ldc.i4.0 
	IL_0089:  ldarg.0 
	IL_008a:  dup 
	IL_008b:  ldfld int32 LinearIr::evaluationStackSize
	IL_0090:  dup 
	IL_0091:  stloc.3 
	IL_0092:  ldc.i4.1 
	IL_0093:  add 
	IL_0094:  stfld int32 LinearIr::evaluationStackSize
	IL_0099:  ldloc.3 
	IL_009a:  stelem.i4 
	IL_009b:  br IL_0104

	IL_00a0:  ldarg.1 
	IL_00a1:  callvirt instance object class [Mono.Cecil]Mono.Cecil.Cil.Instruction::get_Operand()
	IL_00a6:  isinst [Mono.Cecil]Mono.Cecil.MethodReference
	IL_00ab:  stloc.s 4
	IL_00ad:  ldloc.s 4
	IL_00af:  callvirt instance class [Mono.Cecil]Mono.Cecil.TypeReference class [Mono.Cecil]Mono.Cecil.MethodReference::get_ReturnType()
	IL_00b4:  callvirt instance string class [Mono.Cecil]Mono.Cecil.MemberReference::get_FullName()
	IL_00b9:  ldstr "System.Void"
	IL_00be:  call bool string::op_Equality(string, string)
	IL_00c3:  stloc.s 5
	IL_00c5:  ldloc.s 5
	IL_00c7:  brfalse IL_00d2

	IL_00cc:  ldc.i4.0 
	IL_00cd:  br IL_00d3

	IL_00d2:  ldc.i4.1 
	IL_00d3:  newarr [mscorlib]System.Int32
	IL_00d8:  stloc.0 
	IL_00d9:  ldloc.s 5
	IL_00db:  brtrue IL_00f4

	IL_00e0:  ldloc.0 
	IL_00e1:  ldc.i4.0 
	IL_00e2:  ldarg.0 
	IL_00e3:  dup 
	IL_00e4:  ldfld int32 LinearIr::evaluationStackSize
	IL_00e9:  dup 
	IL_00ea:  stloc.3 
	IL_00eb:  ldc.i4.1 
	IL_00ec:  add 
	IL_00ed:  stfld int32 LinearIr::evaluationStackSize
	IL_00f2:  ldloc.3 
	IL_00f3:  stelem.i4 
	IL_00f4:  br IL_0104

	IL_00f9:  ldstr "Invalid Stack Behaviour"
	IL_00fe:  newobj instance void class [mscorlib]System.InvalidOperationException::'.ctor'(string)
	IL_0103:  throw 
	IL_0104:  ldarg.0 
	IL_0105:  ldfld int32 LinearIr::evaluationStackSize
	IL_010a:  ldarg.0 
	IL_010b:  call instance int32 class LinearIr::get_MaxRegisterCount()
	IL_0110:  ble IL_0121

	IL_0115:  ldarg.0 
	IL_0116:  ldarg.0 
	IL_0117:  ldfld int32 LinearIr::evaluationStackSize
	IL_011c:  call instance void class LinearIr::set_MaxRegisterCount(int32)
	IL_0121:  ldloc.0 
	IL_0122:  brfalse IL_012d

	IL_0127:  ldloc.0 
	IL_0128:  br IL_0133

	IL_012d:  ldc.i4.0 
	IL_012e:  newarr [mscorlib]System.Int32
	IL_0133:  ret 
    } // end of method LinearIr::GetInstructionOutputRegisters

    // method line 9
    .method family hidebysig 
           instance default class LinearIrInstruction GetLinearIrInstructionFrom (class [Mono.Cecil]Mono.Cecil.Cil.Instruction stackBasedInstruction)  cil managed 
    {
        // Method begins at RVA 0x2458
	// Code size 25 (0x19)
	.maxstack 3
	.locals init (
		int32[]	V_0,
		int32[]	V_1)
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  call instance int32[] class LinearIr::GetInstructionInputRegisters(class [Mono.Cecil]Mono.Cecil.Cil.Instruction)
	IL_0007:  stloc.0 
	IL_0008:  ldarg.0 
	IL_0009:  ldarg.1 
	IL_000a:  call instance int32[] class LinearIr::GetInstructionOutputRegisters(class [Mono.Cecil]Mono.Cecil.Cil.Instruction)
	IL_000f:  stloc.1 
	IL_0010:  ldarg.1 
	IL_0011:  ldloc.1 
	IL_0012:  ldloc.0 
	IL_0013:  newobj instance void class LinearIrInstruction::'.ctor'(class [Mono.Cecil]Mono.Cecil.Cil.Instruction, class [mscorlib]System.Collections.Generic.IEnumerable`1<int32>, class [mscorlib]System.Collections.Generic.IEnumerable`1<int32>)
	IL_0018:  ret 
    } // end of method LinearIr::GetLinearIrInstructionFrom

    // method line 10
    .method public virtual hidebysig 
           instance default string ToString ()  cil managed 
    {
        // Method begins at RVA 0x247d
	// Code size 38 (0x26)
	.maxstack 8
	IL_0000:  ldstr "{0}\n{{\n{1}\n}}"
	IL_0005:  ldarg.0 
	IL_0006:  call instance class [Mono.Cecil]Mono.Cecil.MethodDefinition class LinearIr::get_MethodDefinition()
	IL_000b:  callvirt instance string class [Mono.Cecil]Mono.Cecil.MemberReference::get_FullName()
	IL_0010:  ldstr "\n"
	IL_0015:  ldarg.0 
	IL_0016:  call instance class [mscorlib]System.Collections.Generic.IEnumerable`1<class LinearIrInstruction> class LinearIr::get_Instructions()
	IL_001b:  call string string::Join<class LinearIrInstruction> (string, class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
	IL_0020:  call string string::Format(string, object, object)
	IL_0025:  ret 
    } // end of method LinearIr::ToString

	.property instance class [Mono.Cecil]Mono.Cecil.MethodDefinition MethodDefinition ()
	{
		.get instance default class [Mono.Cecil]Mono.Cecil.MethodDefinition LinearIr::get_MethodDefinition () 
	}
	.property instance class [mscorlib]System.Collections.Generic.IEnumerable`1<class LinearIrInstruction> Instructions ()
	{
		.get instance default class [mscorlib]System.Collections.Generic.IEnumerable`1<class LinearIrInstruction> LinearIr::get_Instructions () 
		.set instance default void LinearIr::set_Instructions (class [mscorlib]System.Collections.Generic.IEnumerable`1<class LinearIrInstruction> 'value') 
	}
	.property instance int32 MaxRegisterCount ()
	{
		.get instance default int32 LinearIr::get_MaxRegisterCount () 
		.set instance default void LinearIr::set_MaxRegisterCount (int32 'value') 
	}
  .class nested public auto ansi sealed Algorithm
  	extends [mscorlib]System.Enum
  {
    .field  public specialname rtspecialname  int32 value__
    .field public static literal  valuetype LinearIr/Algorithm CfgTraversal = int32(0x00000000)
    .field public static literal  valuetype LinearIr/Algorithm SingleForwardPass = int32(0x00000001)

  } // end of class Algorithm

  } // end of class LinearIr

  .class public auto ansi beforefieldinit LinearIrInstruction
  	extends [mscorlib]System.Object
  {
    .field  private initonly  class [Mono.Cecil]Mono.Cecil.Cil.Instruction '<CorrespondingStackBasedInstruction>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  class [mscorlib]System.Collections.Generic.IEnumerable`1<int32> '<InputRegisters>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  class [mscorlib]System.Collections.Generic.IEnumerable`1<int32> '<OutputRegisters>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private static  class [mscorlib]System.Func`2<int32,string> '<>f__am$cache0'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .field  private static  class [mscorlib]System.Func`2<int32,string> '<>f__am$cache1'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .field  private static  class [mscorlib]System.Func`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction,string> '<>f__am$cache2'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....


    // method line 11
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' (class [Mono.Cecil]Mono.Cecil.Cil.Instruction stackBasedInstruction, class [mscorlib]System.Collections.Generic.IEnumerable`1<int32> oRegs, class [mscorlib]System.Collections.Generic.IEnumerable`1<int32> iRegs)  cil managed 
    {
        // Method begins at RVA 0x24a4
	// Code size 28 (0x1c)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance void object::'.ctor'()
	IL_0006:  ldarg.0 
	IL_0007:  ldarg.1 
	IL_0008:  stfld class [Mono.Cecil]Mono.Cecil.Cil.Instruction LinearIrInstruction::'<CorrespondingStackBasedInstruction>k__BackingField'
	IL_000d:  ldarg.0 
	IL_000e:  ldarg.3 
	IL_000f:  call instance void class LinearIrInstruction::set_InputRegisters(class [mscorlib]System.Collections.Generic.IEnumerable`1<int32>)
	IL_0014:  ldarg.0 
	IL_0015:  ldarg.2 
	IL_0016:  call instance void class LinearIrInstruction::set_OutputRegisters(class [mscorlib]System.Collections.Generic.IEnumerable`1<int32>)
	IL_001b:  ret 
    } // end of method LinearIrInstruction::.ctor

    // method line 12
    .method public hidebysig specialname 
           instance default class [Mono.Cecil]Mono.Cecil.Cil.Instruction get_CorrespondingStackBasedInstruction ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x24c1
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld class [Mono.Cecil]Mono.Cecil.Cil.Instruction LinearIrInstruction::'<CorrespondingStackBasedInstruction>k__BackingField'
	IL_0006:  ret 
    } // end of method LinearIrInstruction::get_CorrespondingStackBasedInstruction

    // method line 13
    .method public hidebysig specialname 
           instance default string get_Name ()  cil managed 
    {
        // Method begins at RVA 0x24cc
	// Code size 20 (0x14)
	.maxstack 1
	.locals init (
		valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode	V_0)
	IL_0000:  ldarg.0 
	IL_0001:  call instance class [Mono.Cecil]Mono.Cecil.Cil.Instruction class LinearIrInstruction::get_CorrespondingStackBasedInstruction()
	IL_0006:  callvirt instance valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode class [Mono.Cecil]Mono.Cecil.Cil.Instruction::get_OpCode()
	IL_000b:  stloc.0 
	IL_000c:  ldloca.s 0
	IL_000e:  call instance string valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode::get_Name()
	IL_0013:  ret 
    } // end of method LinearIrInstruction::get_Name

    // method line 14
    .method public hidebysig specialname 
           instance default string get_Label ()  cil managed 
    {
        // Method begins at RVA 0x24ec
	// Code size 35 (0x23)
	.maxstack 3
	.locals init (
		int32	V_0)
	IL_0000:  ldstr "IL_{0}"
	IL_0005:  ldarg.0 
	IL_0006:  call instance class [Mono.Cecil]Mono.Cecil.Cil.Instruction class LinearIrInstruction::get_CorrespondingStackBasedInstruction()
	IL_000b:  callvirt instance int32 class [Mono.Cecil]Mono.Cecil.Cil.Instruction::get_Offset()
	IL_0010:  stloc.0 
	IL_0011:  ldloca.s 0
	IL_0013:  ldstr "X4"
	IL_0018:  call instance string int32::ToString(string)
	IL_001d:  call string string::Format(string, object)
	IL_0022:  ret 
    } // end of method LinearIrInstruction::get_Label

    // method line 15
    .method public hidebysig specialname 
           instance default class [mscorlib]System.Collections.Generic.IEnumerable`1<int32> get_InputRegisters ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x251b
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld class [mscorlib]System.Collections.Generic.IEnumerable`1<int32> LinearIrInstruction::'<InputRegisters>k__BackingField'
	IL_0006:  ret 
    } // end of method LinearIrInstruction::get_InputRegisters

    // method line 16
    .method private hidebysig specialname 
           instance default void set_InputRegisters (class [mscorlib]System.Collections.Generic.IEnumerable`1<int32> 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2523
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld class [mscorlib]System.Collections.Generic.IEnumerable`1<int32> LinearIrInstruction::'<InputRegisters>k__BackingField'
	IL_0007:  ret 
    } // end of method LinearIrInstruction::set_InputRegisters

    // method line 17
    .method public hidebysig specialname 
           instance default class [mscorlib]System.Collections.Generic.IEnumerable`1<int32> get_OutputRegisters ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x252c
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld class [mscorlib]System.Collections.Generic.IEnumerable`1<int32> LinearIrInstruction::'<OutputRegisters>k__BackingField'
	IL_0006:  ret 
    } // end of method LinearIrInstruction::get_OutputRegisters

    // method line 18
    .method private hidebysig specialname 
           instance default void set_OutputRegisters (class [mscorlib]System.Collections.Generic.IEnumerable`1<int32> 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2534
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld class [mscorlib]System.Collections.Generic.IEnumerable`1<int32> LinearIrInstruction::'<OutputRegisters>k__BackingField'
	IL_0007:  ret 
    } // end of method LinearIrInstruction::set_OutputRegisters

    // method line 19
    .method public hidebysig specialname 
           instance default string get_InputRegisterString ()  cil managed 
    {
        // Method begins at RVA 0x253d
	// Code size 51 (0x33)
	.maxstack 8
	IL_0000:  ldstr " "
	IL_0005:  ldarg.0 
	IL_0006:  call instance class [mscorlib]System.Collections.Generic.IEnumerable`1<int32> class LinearIrInstruction::get_InputRegisters()
	IL_000b:  ldsfld class [mscorlib]System.Func`2<int32,string> LinearIrInstruction::'<>f__am$cache0'
	IL_0010:  brtrue.s IL_0023

	IL_0012:  ldnull 
	IL_0013:  ldftn string class LinearIrInstruction::'<get_InputRegisterString>m__0'(int32)
	IL_0019:  newobj instance void class [mscorlib]System.Func`2<int32, string>::'.ctor'(object, native int)
	IL_001e:  stsfld class [mscorlib]System.Func`2<int32,string> LinearIrInstruction::'<>f__am$cache0'
	IL_0023:  ldsfld class [mscorlib]System.Func`2<int32,string> LinearIrInstruction::'<>f__am$cache0'
	IL_0028:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!1> class [System.Core]System.Linq.Enumerable::Select<int32, string> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>, class [mscorlib]System.Func`2<!!0,!!1>)
	IL_002d:  call string string::Join(string, class [mscorlib]System.Collections.Generic.IEnumerable`1<string>)
	IL_0032:  ret 
    } // end of method LinearIrInstruction::get_InputRegisterString

    // method line 20
    .method public hidebysig specialname 
           instance default string get_OutputRegisterString ()  cil managed 
    {
        // Method begins at RVA 0x2571
	// Code size 51 (0x33)
	.maxstack 8
	IL_0000:  ldstr " "
	IL_0005:  ldarg.0 
	IL_0006:  call instance class [mscorlib]System.Collections.Generic.IEnumerable`1<int32> class LinearIrInstruction::get_OutputRegisters()
	IL_000b:  ldsfld class [mscorlib]System.Func`2<int32,string> LinearIrInstruction::'<>f__am$cache1'
	IL_0010:  brtrue.s IL_0023

	IL_0012:  ldnull 
	IL_0013:  ldftn string class LinearIrInstruction::'<get_OutputRegisterString>m__1'(int32)
	IL_0019:  newobj instance void class [mscorlib]System.Func`2<int32, string>::'.ctor'(object, native int)
	IL_001e:  stsfld class [mscorlib]System.Func`2<int32,string> LinearIrInstruction::'<>f__am$cache1'
	IL_0023:  ldsfld class [mscorlib]System.Func`2<int32,string> LinearIrInstruction::'<>f__am$cache1'
	IL_0028:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!1> class [System.Core]System.Linq.Enumerable::Select<int32, string> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>, class [mscorlib]System.Func`2<!!0,!!1>)
	IL_002d:  call string string::Join(string, class [mscorlib]System.Collections.Generic.IEnumerable`1<string>)
	IL_0032:  ret 
    } // end of method LinearIrInstruction::get_OutputRegisterString

    // method line 21
    .method public virtual hidebysig 
           instance default string ToString ()  cil managed 
    {
        // Method begins at RVA 0x25a8
	// Code size 251 (0xfb)
	.maxstack 6
	.locals init (
		string	V_0,
		class [mscorlib]System.Collections.Generic.IEnumerable`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction>	V_1)
	IL_0000:  ldc.i4.7 
	IL_0001:  newarr [mscorlib]System.String
	IL_0006:  dup 
	IL_0007:  ldc.i4.0 
	IL_0008:  ldarg.0 
	IL_0009:  call instance string class LinearIrInstruction::get_Label()
	IL_000e:  stelem.ref 
	IL_000f:  dup 
	IL_0010:  ldc.i4.1 
	IL_0011:  ldstr ": "
	IL_0016:  stelem.ref 
	IL_0017:  dup 
	IL_0018:  ldc.i4.2 
	IL_0019:  ldarg.0 
	IL_001a:  call instance string class LinearIrInstruction::get_Name()
	IL_001f:  stelem.ref 
	IL_0020:  dup 
	IL_0021:  ldc.i4.3 
	IL_0022:  ldstr " "
	IL_0027:  stelem.ref 
	IL_0028:  dup 
	IL_0029:  ldc.i4.4 
	IL_002a:  ldarg.0 
	IL_002b:  call instance string class LinearIrInstruction::get_OutputRegisterString()
	IL_0030:  stelem.ref 
	IL_0031:  dup 
	IL_0032:  ldc.i4.5 
	IL_0033:  ldarg.0 
	IL_0034:  call instance class [mscorlib]System.Collections.Generic.IEnumerable`1<int32> class LinearIrInstruction::get_OutputRegisters()
	IL_0039:  call int32 class [System.Core]System.Linq.Enumerable::Count<int32> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
	IL_003e:  ldc.i4.0 
	IL_003f:  ble IL_005f

	IL_0044:  ldarg.0 
	IL_0045:  call instance class [mscorlib]System.Collections.Generic.IEnumerable`1<int32> class LinearIrInstruction::get_InputRegisters()
	IL_004a:  call int32 class [System.Core]System.Linq.Enumerable::Count<int32> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
	IL_004f:  ldc.i4.0 
	IL_0050:  ble IL_005f

	IL_0055:  ldstr " <- "
	IL_005a:  br IL_0064

	IL_005f:  ldsfld string [mscorlib]System.String::Empty
	IL_0064:  stelem.ref 
	IL_0065:  dup 
	IL_0066:  ldc.i4.6 
	IL_0067:  ldarg.0 
	IL_0068:  call instance string class LinearIrInstruction::get_InputRegisterString()
	IL_006d:  stelem.ref 
	IL_006e:  call string string::Concat(string[])
	IL_0073:  stloc.0 
	IL_0074:  ldarg.0 
	IL_0075:  call instance class [Mono.Cecil]Mono.Cecil.Cil.Instruction class LinearIrInstruction::get_CorrespondingStackBasedInstruction()
	IL_007a:  call bool class InstructionExtensions::IsControlFlowInstruction(class [Mono.Cecil]Mono.Cecil.Cil.Instruction)
	IL_007f:  brfalse IL_00f9

	IL_0084:  ldarg.0 
	IL_0085:  call instance class [Mono.Cecil]Mono.Cecil.Cil.Instruction class LinearIrInstruction::get_CorrespondingStackBasedInstruction()
	IL_008a:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> class InstructionExtensions::GetControlFlowInstructionTargets(class [Mono.Cecil]Mono.Cecil.Cil.Instruction)
	IL_008f:  stloc.1 
	IL_0090:  ldloc.1 
	IL_0091:  call int32 class [System.Core]System.Linq.Enumerable::Count<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
	IL_0096:  brtrue IL_009d

	IL_009b:  ldloc.0 
	IL_009c:  ret 
	IL_009d:  ldloc.1 
	IL_009e:  call int32 class [System.Core]System.Linq.Enumerable::Count<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
	IL_00a3:  ldc.i4.1 
	IL_00a4:  bne.un IL_00c0

	IL_00a9:  ldloc.0 
	IL_00aa:  ldstr " | target: "
	IL_00af:  ldloc.1 
	IL_00b0:  call !!0 class [System.Core]System.Linq.Enumerable::Single<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
	IL_00b5:  call string class InstructionExtensions::GetLabel(class [Mono.Cecil]Mono.Cecil.Cil.Instruction)
	IL_00ba:  call string string::Concat(string, string, string)
	IL_00bf:  ret 
	IL_00c0:  ldloc.0 
	IL_00c1:  ldstr " | targets: "
	IL_00c6:  ldstr " "
	IL_00cb:  ldloc.1 
	IL_00cc:  ldsfld class [mscorlib]System.Func`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction,string> LinearIrInstruction::'<>f__am$cache2'
	IL_00d1:  brtrue.s IL_00e4

	IL_00d3:  ldnull 
	IL_00d4:  ldftn string class LinearIrInstruction::'<ToString>m__2'(class [Mono.Cecil]Mono.Cecil.Cil.Instruction)
	IL_00da:  newobj instance void class [mscorlib]System.Func`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction, string>::'.ctor'(object, native int)
	IL_00df:  stsfld class [mscorlib]System.Func`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction,string> LinearIrInstruction::'<>f__am$cache2'
	IL_00e4:  ldsfld class [mscorlib]System.Func`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction,string> LinearIrInstruction::'<>f__am$cache2'
	IL_00e9:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!1> class [System.Core]System.Linq.Enumerable::Select<class [Mono.Cecil]Mono.Cecil.Cil.Instruction, string> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>, class [mscorlib]System.Func`2<!!0,!!1>)
	IL_00ee:  call string string::Join(string, class [mscorlib]System.Collections.Generic.IEnumerable`1<string>)
	IL_00f3:  call string string::Concat(string, string, string)
	IL_00f8:  ret 
	IL_00f9:  ldloc.0 
	IL_00fa:  ret 
    } // end of method LinearIrInstruction::ToString

    // method line 22
    .method private static hidebysig 
           default string '<get_InputRegisterString>m__0' (int32 x)  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x26af
	// Code size 17 (0x11)
	.maxstack 8
	IL_0000:  ldstr "v"
	IL_0005:  ldarg.0 
	IL_0006:  box [mscorlib]System.Int32
	IL_000b:  call string string::Concat(object, object)
	IL_0010:  ret 
    } // end of method LinearIrInstruction::<get_InputRegisterString>m__0

    // method line 23
    .method private static hidebysig 
           default string '<get_OutputRegisterString>m__1' (int32 x)  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x26c1
	// Code size 17 (0x11)
	.maxstack 8
	IL_0000:  ldstr "v"
	IL_0005:  ldarg.0 
	IL_0006:  box [mscorlib]System.Int32
	IL_000b:  call string string::Concat(object, object)
	IL_0010:  ret 
    } // end of method LinearIrInstruction::<get_OutputRegisterString>m__1

    // method line 24
    .method private static hidebysig 
           default string '<ToString>m__2' (class [Mono.Cecil]Mono.Cecil.Cil.Instruction x)  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x26d3
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call string class InstructionExtensions::GetLabel(class [Mono.Cecil]Mono.Cecil.Cil.Instruction)
	IL_0006:  ret 
    } // end of method LinearIrInstruction::<ToString>m__2

	.property instance class [Mono.Cecil]Mono.Cecil.Cil.Instruction CorrespondingStackBasedInstruction ()
	{
		.get instance default class [Mono.Cecil]Mono.Cecil.Cil.Instruction LinearIrInstruction::get_CorrespondingStackBasedInstruction () 
	}
	.property instance string Name ()
	{
		.get instance default string LinearIrInstruction::get_Name () 
	}
	.property instance string Label ()
	{
		.get instance default string LinearIrInstruction::get_Label () 
	}
	.property instance class [mscorlib]System.Collections.Generic.IEnumerable`1<int32> InputRegisters ()
	{
		.get instance default class [mscorlib]System.Collections.Generic.IEnumerable`1<int32> LinearIrInstruction::get_InputRegisters () 
		.set instance default void LinearIrInstruction::set_InputRegisters (class [mscorlib]System.Collections.Generic.IEnumerable`1<int32> 'value') 
	}
	.property instance class [mscorlib]System.Collections.Generic.IEnumerable`1<int32> OutputRegisters ()
	{
		.get instance default class [mscorlib]System.Collections.Generic.IEnumerable`1<int32> LinearIrInstruction::get_OutputRegisters () 
		.set instance default void LinearIrInstruction::set_OutputRegisters (class [mscorlib]System.Collections.Generic.IEnumerable`1<int32> 'value') 
	}
	.property instance string InputRegisterString ()
	{
		.get instance default string LinearIrInstruction::get_InputRegisterString () 
	}
	.property instance string OutputRegisterString ()
	{
		.get instance default string LinearIrInstruction::get_OutputRegisterString () 
	}
  } // end of class LinearIrInstruction

  .class public auto ansi abstract sealed beforefieldinit InstructionExtensions
  	extends [mscorlib]System.Object
  {
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.ExtensionAttribute::'.ctor'() =  (01 00 00 00 ) // ....


    // method line 25
    .method public static hidebysig 
           default bool IsControlFlowInstruction (class [Mono.Cecil]Mono.Cecil.Cil.Instruction i)  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.ExtensionAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x26dc
	// Code size 60 (0x3c)
	.maxstack 2
	.locals init (
		valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode	V_0,
		valuetype [Mono.Cecil]Mono.Cecil.Cil.FlowControl	V_1)
	IL_0000:  ldarg.0 
	IL_0001:  callvirt instance valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode class [Mono.Cecil]Mono.Cecil.Cil.Instruction::get_OpCode()
	IL_0006:  stloc.0 
	IL_0007:  ldloca.s 0
	IL_0009:  call instance valuetype [Mono.Cecil]Mono.Cecil.Cil.FlowControl valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode::get_FlowControl()
	IL_000e:  stloc.1 
	IL_000f:  ldloc.1 
	IL_0010:  switch (
	  IL_0038,
	  IL_0025,
	  IL_0025,
	  IL_0038)
	IL_0025:  ldloc.1 
	IL_0026:  ldc.i4.7 
	IL_0027:  beq IL_0038

	IL_002c:  ldloc.1 
	IL_002d:  ldc.i4.8 
	IL_002e:  beq IL_0038

	IL_0033:  br IL_003a

	IL_0038:  ldc.i4.1 
	IL_0039:  ret 
	IL_003a:  ldc.i4.0 
	IL_003b:  ret 
    } // end of method InstructionExtensions::IsControlFlowInstruction

    // method line 26
    .method public static hidebysig 
           default class [mscorlib]System.Collections.Generic.IEnumerable`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> GetControlFlowInstructionTargets (class [Mono.Cecil]Mono.Cecil.Cil.Instruction i)  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.ExtensionAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2724
	// Code size 123 (0x7b)
	.maxstack 4
	.locals init (
		valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode	V_0,
		valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode	V_1)
	IL_0000:  ldarg.0 
	IL_0001:  callvirt instance valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode class [Mono.Cecil]Mono.Cecil.Cil.Instruction::get_OpCode()
	IL_0006:  stloc.0 
	IL_0007:  ldloca.s 0
	IL_0009:  call instance valuetype [Mono.Cecil]Mono.Cecil.Cil.FlowControl valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode::get_FlowControl()
	IL_000e:  ldc.i4.7 
	IL_000f:  beq IL_0028

	IL_0014:  ldarg.0 
	IL_0015:  callvirt instance valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode class [Mono.Cecil]Mono.Cecil.Cil.Instruction::get_OpCode()
	IL_001a:  stloc.1 
	IL_001b:  ldloca.s 1
	IL_001d:  call instance valuetype [Mono.Cecil]Mono.Cecil.Cil.FlowControl valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode::get_FlowControl()
	IL_0022:  ldc.i4.8 
	IL_0023:  bne.un IL_002f

	IL_0028:  ldc.i4.0 
	IL_0029:  newarr [Mono.Cecil]Mono.Cecil.Cil.Instruction
	IL_002e:  ret 
	IL_002f:  ldarg.0 
	IL_0030:  callvirt instance object class [Mono.Cecil]Mono.Cecil.Cil.Instruction::get_Operand()
	IL_0035:  isinst [Mono.Cecil]Mono.Cecil.Cil.Instruction
	IL_003a:  brfalse IL_0054

	IL_003f:  ldc.i4.1 
	IL_0040:  newarr [Mono.Cecil]Mono.Cecil.Cil.Instruction
	IL_0045:  dup 
	IL_0046:  ldc.i4.0 
	IL_0047:  ldarg.0 
	IL_0048:  callvirt instance object class [Mono.Cecil]Mono.Cecil.Cil.Instruction::get_Operand()
	IL_004d:  castclass [Mono.Cecil]Mono.Cecil.Cil.Instruction
	IL_0052:  stelem.ref 
	IL_0053:  ret 
	IL_0054:  ldarg.0 
	IL_0055:  callvirt instance object class [Mono.Cecil]Mono.Cecil.Cil.Instruction::get_Operand()
	IL_005a:  isinst class [Mono.Cecil]Mono.Cecil.Cil.Instruction[]
	IL_005f:  brfalse IL_0070

	IL_0064:  ldarg.0 
	IL_0065:  callvirt instance object class [Mono.Cecil]Mono.Cecil.Cil.Instruction::get_Operand()
	IL_006a:  isinst class [Mono.Cecil]Mono.Cecil.Cil.Instruction[]
	IL_006f:  ret 
	IL_0070:  ldstr "The given instruction is not a control transfer instruction"
	IL_0075:  newobj instance void class [mscorlib]System.InvalidOperationException::'.ctor'(string)
	IL_007a:  throw 
    } // end of method InstructionExtensions::GetControlFlowInstructionTargets

    // method line 27
    .method public static hidebysig 
           default bool HasFallthroughInstruction (class [Mono.Cecil]Mono.Cecil.Cil.Instruction i)  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.ExtensionAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x27ac
	// Code size 63 (0x3f)
	.maxstack 2
	.locals init (
		valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode	V_0,
		valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode	V_1,
		valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode	V_2)
	IL_0000:  ldarg.0 
	IL_0001:  callvirt instance valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode class [Mono.Cecil]Mono.Cecil.Cil.Instruction::get_OpCode()
	IL_0006:  stloc.0 
	IL_0007:  ldloca.s 0
	IL_0009:  call instance valuetype [Mono.Cecil]Mono.Cecil.Cil.FlowControl valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode::get_FlowControl()
	IL_000e:  brfalse IL_003d

	IL_0013:  ldarg.0 
	IL_0014:  callvirt instance valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode class [Mono.Cecil]Mono.Cecil.Cil.Instruction::get_OpCode()
	IL_0019:  stloc.1 
	IL_001a:  ldloca.s 1
	IL_001c:  call instance valuetype [Mono.Cecil]Mono.Cecil.Cil.FlowControl valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode::get_FlowControl()
	IL_0021:  ldc.i4.7 
	IL_0022:  beq IL_003d

	IL_0027:  ldarg.0 
	IL_0028:  callvirt instance valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode class [Mono.Cecil]Mono.Cecil.Cil.Instruction::get_OpCode()
	IL_002d:  stloc.2 
	IL_002e:  ldloca.s 2
	IL_0030:  call instance valuetype [Mono.Cecil]Mono.Cecil.Cil.FlowControl valuetype [Mono.Cecil]Mono.Cecil.Cil.OpCode::get_FlowControl()
	IL_0035:  ldc.i4.8 
	IL_0036:  ceq 
	IL_0038:  ldc.i4.0 
	IL_0039:  ceq 
	IL_003b:  br.s IL_003e

	IL_003d:  ldc.i4.0 
	IL_003e:  ret 
    } // end of method InstructionExtensions::HasFallthroughInstruction

    // method line 28
    .method public static hidebysig 
           default string GetLabel (class [Mono.Cecil]Mono.Cecil.Cil.Instruction i)  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.ExtensionAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x27f8
	// Code size 30 (0x1e)
	.maxstack 3
	.locals init (
		int32	V_0)
	IL_0000:  ldstr "IL_{0}:"
	IL_0005:  ldarg.0 
	IL_0006:  callvirt instance int32 class [Mono.Cecil]Mono.Cecil.Cil.Instruction::get_Offset()
	IL_000b:  stloc.0 
	IL_000c:  ldloca.s 0
	IL_000e:  ldstr "X4"
	IL_0013:  call instance string int32::ToString(string)
	IL_0018:  call string string::Format(string, object)
	IL_001d:  ret 
    } // end of method InstructionExtensions::GetLabel

  } // end of class InstructionExtensions

  .class public auto ansi beforefieldinit CilControlFlowGraph
  	extends [mscorlib]System.Object
  {
    .field  private  class [mscorlib]System.Collections.Generic.IEnumerable`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> instructions
    .field  private  class [mscorlib]System.Collections.Generic.Dictionary`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction,class CilBasicBlock> branchTargetInstructionDictionary
    .field  private  class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> '<BasicBlocks>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  class [Mono.Cecil]Mono.Cecil.MethodDefinition '<MethodDefinition>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private static  class [mscorlib]System.Func`2<class CilBasicBlock,bool> '<>f__am$cache0'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .field  private static  class [mscorlib]System.Func`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction,bool> '<>f__am$cache1'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .field  private static  class [mscorlib]System.Func`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction,class [mscorlib]System.Collections.Generic.IEnumerable`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction>> '<>f__am$cache2'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .field  private static  class [mscorlib]System.Func`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction,class [Mono.Cecil]Mono.Cecil.Cil.Instruction> '<>f__am$cache3'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .field  private static  class [mscorlib]System.Func`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction,class CilBasicBlock> '<>f__am$cache4'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....


    // method line 29
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' (class [Mono.Cecil]Mono.Cecil.ModuleDefinition moduleDefinition, string typeName, string methodName)  cil managed 
    {
        // Method begins at RVA 0x2824
	// Code size 177 (0xb1)
	.maxstack 3
	.locals init (
		class CilControlFlowGraph/'<CilControlFlowGraph>c__AnonStorey0'	V_0,
		class [Mono.Cecil]Mono.Cecil.TypeDefinition	V_1,
		class [Mono.Cecil]Mono.Cecil.MethodDefinition	V_2)
	IL_0000:  newobj instance void class CilControlFlowGraph/'<CilControlFlowGraph>c__AnonStorey0'::'.ctor'()
	IL_0005:  stloc.0 
	IL_0006:  ldloc.0 
	IL_0007:  ldarg.2 
	IL_0008:  stfld string CilControlFlowGraph/'<CilControlFlowGraph>c__AnonStorey0'::typeName
	IL_000d:  ldloc.0 
	IL_000e:  ldarg.3 
	IL_000f:  stfld string CilControlFlowGraph/'<CilControlFlowGraph>c__AnonStorey0'::methodName
	IL_0014:  ldarg.0 
	IL_0015:  call instance void object::'.ctor'()
	IL_001a:  ldarg.1 
	IL_001b:  callvirt instance class [Mono.Cecil]Mono.Collections.Generic.Collection`1<class [Mono.Cecil]Mono.Cecil.TypeDefinition> class [Mono.Cecil]Mono.Cecil.ModuleDefinition::get_Types()
	IL_0020:  ldloc.0 
	IL_0021:  ldftn instance bool class CilControlFlowGraph/'<CilControlFlowGraph>c__AnonStorey0'::'<>m__0'(class [Mono.Cecil]Mono.Cecil.TypeDefinition)
	IL_0027:  newobj instance void class [mscorlib]System.Func`2<class [Mono.Cecil]Mono.Cecil.TypeDefinition, bool>::'.ctor'(object, native int)
	IL_002c:  call !!0 class [System.Core]System.Linq.Enumerable::FirstOrDefault<class [Mono.Cecil]Mono.Cecil.TypeDefinition> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>, class [mscorlib]System.Func`2<!!0,bool>)
	IL_0031:  stloc.1 
	IL_0032:  ldloc.1 
	IL_0033:  brtrue IL_004e

	IL_0038:  ldstr "Could not find type '{0}'"
	IL_003d:  ldloc.0 
	IL_003e:  ldfld string CilControlFlowGraph/'<CilControlFlowGraph>c__AnonStorey0'::typeName
	IL_0043:  call string string::Format(string, object)
	IL_0048:  newobj instance void class [mscorlib]System.ArgumentException::'.ctor'(string)
	IL_004d:  throw 
	IL_004e:  ldloc.1 
	IL_004f:  callvirt instance class [Mono.Cecil]Mono.Collections.Generic.Collection`1<class [Mono.Cecil]Mono.Cecil.MethodDefinition> class [Mono.Cecil]Mono.Cecil.TypeDefinition::get_Methods()
	IL_0054:  ldloc.0 
	IL_0055:  ldftn instance bool class CilControlFlowGraph/'<CilControlFlowGraph>c__AnonStorey0'::'<>m__1'(class [Mono.Cecil]Mono.Cecil.MethodDefinition)
	IL_005b:  newobj instance void class [mscorlib]System.Func`2<class [Mono.Cecil]Mono.Cecil.MethodDefinition, bool>::'.ctor'(object, native int)
	IL_0060:  call !!0 class [System.Core]System.Linq.Enumerable::First<class [Mono.Cecil]Mono.Cecil.MethodDefinition> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>, class [mscorlib]System.Func`2<!!0,bool>)
	IL_0065:  stloc.2 
	IL_0066:  ldloc.2 
	IL_0067:  brtrue IL_0082

	IL_006c:  ldstr "Could not find method '{0}'"
	IL_0071:  ldloc.0 
	IL_0072:  ldfld string CilControlFlowGraph/'<CilControlFlowGraph>c__AnonStorey0'::methodName
	IL_0077:  call string string::Format(string, object)
	IL_007c:  newobj instance void class [mscorlib]System.ArgumentException::'.ctor'(string)
	IL_0081:  throw 
	IL_0082:  ldarg.0 
	IL_0083:  ldloc.2 
	IL_0084:  call instance void class CilControlFlowGraph::set_MethodDefinition(class [Mono.Cecil]Mono.Cecil.MethodDefinition)
	IL_0089:  ldarg.0 
	IL_008a:  ldarg.0 
	IL_008b:  call instance class [Mono.Cecil]Mono.Cecil.MethodDefinition class CilControlFlowGraph::get_MethodDefinition()
	IL_0090:  callvirt instance class [Mono.Cecil]Mono.Cecil.Cil.MethodBody class [Mono.Cecil]Mono.Cecil.MethodDefinition::get_Body()
	IL_0095:  callvirt instance class [Mono.Cecil]Mono.Collections.Generic.Collection`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> class [Mono.Cecil]Mono.Cecil.Cil.MethodBody::get_Instructions()
	IL_009a:  stfld class [mscorlib]System.Collections.Generic.IEnumerable`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> CilControlFlowGraph::instructions
	IL_009f:  ldarg.0 
	IL_00a0:  newobj instance void class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock>::'.ctor'()
	IL_00a5:  call instance void class CilControlFlowGraph::set_BasicBlocks(class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock>)
	IL_00aa:  ldarg.0 
	IL_00ab:  call instance void class CilControlFlowGraph::GenerateControlFlowGraph()
	IL_00b0:  ret 
    } // end of method CilControlFlowGraph::.ctor

    // method line 30
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' (class [Mono.Cecil]Mono.Cecil.MethodDefinition methodDefinition)  cil managed 
    {
        // Method begins at RVA 0x28e1
	// Code size 53 (0x35)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance void object::'.ctor'()
	IL_0006:  ldarg.0 
	IL_0007:  ldarg.1 
	IL_0008:  call instance void class CilControlFlowGraph::set_MethodDefinition(class [Mono.Cecil]Mono.Cecil.MethodDefinition)
	IL_000d:  ldarg.0 
	IL_000e:  ldarg.0 
	IL_000f:  call instance class [Mono.Cecil]Mono.Cecil.MethodDefinition class CilControlFlowGraph::get_MethodDefinition()
	IL_0014:  callvirt instance class [Mono.Cecil]Mono.Cecil.Cil.MethodBody class [Mono.Cecil]Mono.Cecil.MethodDefinition::get_Body()
	IL_0019:  callvirt instance class [Mono.Cecil]Mono.Collections.Generic.Collection`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> class [Mono.Cecil]Mono.Cecil.Cil.MethodBody::get_Instructions()
	IL_001e:  stfld class [mscorlib]System.Collections.Generic.IEnumerable`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> CilControlFlowGraph::instructions
	IL_0023:  ldarg.0 
	IL_0024:  newobj instance void class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock>::'.ctor'()
	IL_0029:  call instance void class CilControlFlowGraph::set_BasicBlocks(class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock>)
	IL_002e:  ldarg.0 
	IL_002f:  call instance void class CilControlFlowGraph::GenerateControlFlowGraph()
	IL_0034:  ret 
    } // end of method CilControlFlowGraph::.ctor

    // method line 31
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' (string module, string 'type', string 'method')  cil managed 
    {
        // Method begins at RVA 0x2917
	// Code size 15 (0xf)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  call class [Mono.Cecil]Mono.Cecil.ModuleDefinition class [Mono.Cecil]Mono.Cecil.ModuleDefinition::ReadModule(string)
	IL_0007:  ldarg.2 
	IL_0008:  ldarg.3 
	IL_0009:  call instance void class CilControlFlowGraph::'.ctor'(class [Mono.Cecil]Mono.Cecil.ModuleDefinition, string, string)
	IL_000e:  ret 
    } // end of method CilControlFlowGraph::.ctor

    // method line 32
    .method public hidebysig specialname 
           instance default class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> get_BasicBlocks ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2927
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> CilControlFlowGraph::'<BasicBlocks>k__BackingField'
	IL_0006:  ret 
    } // end of method CilControlFlowGraph::get_BasicBlocks

    // method line 33
    .method private hidebysig specialname 
           instance default void set_BasicBlocks (class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x292f
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> CilControlFlowGraph::'<BasicBlocks>k__BackingField'
	IL_0007:  ret 
    } // end of method CilControlFlowGraph::set_BasicBlocks

    // method line 34
    .method public hidebysig specialname 
           instance default class CilBasicBlock get_EntryBasicBlock ()  cil managed 
    {
        // Method begins at RVA 0x2938
	// Code size 12 (0xc)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> class CilControlFlowGraph::get_BasicBlocks()
	IL_0006:  call !!0 class [System.Core]System.Linq.Enumerable::FirstOrDefault<class CilBasicBlock> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
	IL_000b:  ret 
    } // end of method CilControlFlowGraph::get_EntryBasicBlock

    // method line 35
    .method public hidebysig specialname 
           instance default class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> get_ExitBasicBlocks ()  cil managed 
    {
        // Method begins at RVA 0x2945
	// Code size 46 (0x2e)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> class CilControlFlowGraph::get_BasicBlocks()
	IL_0006:  ldsfld class [mscorlib]System.Func`2<class CilBasicBlock,bool> CilControlFlowGraph::'<>f__am$cache0'
	IL_000b:  brtrue.s IL_001e

	IL_000d:  ldnull 
	IL_000e:  ldftn bool class CilControlFlowGraph::'<get_ExitBasicBlocks>m__0'(class CilBasicBlock)
	IL_0014:  newobj instance void class [mscorlib]System.Func`2<class CilBasicBlock, bool>::'.ctor'(object, native int)
	IL_0019:  stsfld class [mscorlib]System.Func`2<class CilBasicBlock,bool> CilControlFlowGraph::'<>f__am$cache0'
	IL_001e:  ldsfld class [mscorlib]System.Func`2<class CilBasicBlock,bool> CilControlFlowGraph::'<>f__am$cache0'
	IL_0023:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> class [System.Core]System.Linq.Enumerable::Where<class CilBasicBlock> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>, class [mscorlib]System.Func`2<!!0,bool>)
	IL_0028:  call class [mscorlib]System.Collections.Generic.List`1<!!0> class [System.Core]System.Linq.Enumerable::ToList<class CilBasicBlock> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
	IL_002d:  ret 
    } // end of method CilControlFlowGraph::get_ExitBasicBlocks

    // method line 36
    .method public virtual hidebysig 
           instance default string ToString ()  cil managed 
    {
        // Method begins at RVA 0x2974
	// Code size 17 (0x11)
	.maxstack 8
	IL_0000:  ldstr "\n"
	IL_0005:  ldarg.0 
	IL_0006:  call instance class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> class CilControlFlowGraph::get_BasicBlocks()
	IL_000b:  call string string::Join<class CilBasicBlock> (string, class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
	IL_0010:  ret 
    } // end of method CilControlFlowGraph::ToString

    // method line 37
    .method public hidebysig specialname 
           instance default class [Mono.Cecil]Mono.Cecil.MethodDefinition get_MethodDefinition ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2986
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld class [Mono.Cecil]Mono.Cecil.MethodDefinition CilControlFlowGraph::'<MethodDefinition>k__BackingField'
	IL_0006:  ret 
    } // end of method CilControlFlowGraph::get_MethodDefinition

    // method line 38
    .method private hidebysig specialname 
           instance default void set_MethodDefinition (class [Mono.Cecil]Mono.Cecil.MethodDefinition 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x298e
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld class [Mono.Cecil]Mono.Cecil.MethodDefinition CilControlFlowGraph::'<MethodDefinition>k__BackingField'
	IL_0007:  ret 
    } // end of method CilControlFlowGraph::set_MethodDefinition

    // method line 39
    .method private hidebysig 
           instance default void GenerateControlFlowGraph ()  cil managed 
    {
        // Method begins at RVA 0x2997
	// Code size 19 (0x13)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance void class CilControlFlowGraph::FindBranchTargetInstructions()
	IL_0006:  ldarg.0 
	IL_0007:  call instance void class CilControlFlowGraph::ConstructBasicBlocks()
	IL_000c:  ldarg.0 
	IL_000d:  call instance void class CilControlFlowGraph::LinkBasicBlocks()
	IL_0012:  ret 
    } // end of method CilControlFlowGraph::GenerateControlFlowGraph

    // method line 40
    .method private hidebysig 
           instance default void FindBranchTargetInstructions ()  cil managed 
    {
        // Method begins at RVA 0x29ac
	// Code size 149 (0x95)
	.maxstack 5
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.0 
	IL_0002:  ldfld class [mscorlib]System.Collections.Generic.IEnumerable`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> CilControlFlowGraph::instructions
	IL_0007:  ldsfld class [mscorlib]System.Func`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction,bool> CilControlFlowGraph::'<>f__am$cache1'
	IL_000c:  brtrue.s IL_001f

	IL_000e:  ldnull 
	IL_000f:  ldftn bool class CilControlFlowGraph::'<FindBranchTargetInstructions>m__1'(class [Mono.Cecil]Mono.Cecil.Cil.Instruction)
	IL_0015:  newobj instance void class [mscorlib]System.Func`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction, bool>::'.ctor'(object, native int)
	IL_001a:  stsfld class [mscorlib]System.Func`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction,bool> CilControlFlowGraph::'<>f__am$cache1'
	IL_001f:  ldsfld class [mscorlib]System.Func`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction,bool> CilControlFlowGraph::'<>f__am$cache1'
	IL_0024:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> class [System.Core]System.Linq.Enumerable::Where<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>, class [mscorlib]System.Func`2<!!0,bool>)
	IL_0029:  ldsfld class [mscorlib]System.Func`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction,class [mscorlib]System.Collections.Generic.IEnumerable`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction>> CilControlFlowGraph::'<>f__am$cache2'
	IL_002e:  brtrue.s IL_0041

	IL_0030:  ldnull 
	IL_0031:  ldftn class [mscorlib]System.Collections.Generic.IEnumerable`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> class CilControlFlowGraph::'<FindBranchTargetInstructions>m__2'(class [Mono.Cecil]Mono.Cecil.Cil.Instruction)
	IL_0037:  newobj instance void class [mscorlib]System.Func`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction, class [mscorlib]System.Collections.Generic.IEnumerable`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction>>::'.ctor'(object, native int)
	IL_003c:  stsfld class [mscorlib]System.Func`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction,class [mscorlib]System.Collections.Generic.IEnumerable`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction>> CilControlFlowGraph::'<>f__am$cache2'
	IL_0041:  ldsfld class [mscorlib]System.Func`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction,class [mscorlib]System.Collections.Generic.IEnumerable`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction>> CilControlFlowGraph::'<>f__am$cache2'
	IL_0046:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!1> class [System.Core]System.Linq.Enumerable::SelectMany<class [Mono.Cecil]Mono.Cecil.Cil.Instruction, class [Mono.Cecil]Mono.Cecil.Cil.Instruction> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>, class [mscorlib]System.Func`2<!!0,class [mscorlib]System.Collections.Generic.IEnumerable`1<!!1>>)
	IL_004b:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> class [System.Core]System.Linq.Enumerable::Distinct<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
	IL_0050:  ldsfld class [mscorlib]System.Func`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction,class [Mono.Cecil]Mono.Cecil.Cil.Instruction> CilControlFlowGraph::'<>f__am$cache3'
	IL_0055:  brtrue.s IL_0068

	IL_0057:  ldnull 
	IL_0058:  ldftn class [Mono.Cecil]Mono.Cecil.Cil.Instruction class CilControlFlowGraph::'<FindBranchTargetInstructions>m__3'(class [Mono.Cecil]Mono.Cecil.Cil.Instruction)
	IL_005e:  newobj instance void class [mscorlib]System.Func`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction, class [Mono.Cecil]Mono.Cecil.Cil.Instruction>::'.ctor'(object, native int)
	IL_0063:  stsfld class [mscorlib]System.Func`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction,class [Mono.Cecil]Mono.Cecil.Cil.Instruction> CilControlFlowGraph::'<>f__am$cache3'
	IL_0068:  ldsfld class [mscorlib]System.Func`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction,class [Mono.Cecil]Mono.Cecil.Cil.Instruction> CilControlFlowGraph::'<>f__am$cache3'
	IL_006d:  ldsfld class [mscorlib]System.Func`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction,class CilBasicBlock> CilControlFlowGraph::'<>f__am$cache4'
	IL_0072:  brtrue.s IL_0085

	IL_0074:  ldnull 
	IL_0075:  ldftn class CilBasicBlock class CilControlFlowGraph::'<FindBranchTargetInstructions>m__4'(class [Mono.Cecil]Mono.Cecil.Cil.Instruction)
	IL_007b:  newobj instance void class [mscorlib]System.Func`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction, class CilBasicBlock>::'.ctor'(object, native int)
	IL_0080:  stsfld class [mscorlib]System.Func`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction,class CilBasicBlock> CilControlFlowGraph::'<>f__am$cache4'
	IL_0085:  ldsfld class [mscorlib]System.Func`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction,class CilBasicBlock> CilControlFlowGraph::'<>f__am$cache4'
	IL_008a:  call class [mscorlib]System.Collections.Generic.Dictionary`2<!!1,!!2> class [System.Core]System.Linq.Enumerable::ToDictionary<class [Mono.Cecil]Mono.Cecil.Cil.Instruction, class [Mono.Cecil]Mono.Cecil.Cil.Instruction, class CilBasicBlock> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>, class [mscorlib]System.Func`2<!!0,!!1>, class [mscorlib]System.Func`2<!!0,!!2>)
	IL_008f:  stfld class [mscorlib]System.Collections.Generic.Dictionary`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction,class CilBasicBlock> CilControlFlowGraph::branchTargetInstructionDictionary
	IL_0094:  ret 
    } // end of method CilControlFlowGraph::FindBranchTargetInstructions

    // method line 41
    .method private hidebysig 
           instance default void ConstructBasicBlocks ()  cil managed 
    {
        // Method begins at RVA 0x2a50
	// Code size 172 (0xac)
	.maxstack 3
	.locals init (
		int32	V_0,
		class CilBasicBlock	V_1,
		class [Mono.Cecil]Mono.Cecil.Cil.Instruction	V_2,
		class [mscorlib]System.Collections.Generic.IEnumerator`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction>	V_3)
	IL_0000:  ldc.i4.0 
	IL_0001:  stloc.0 
	IL_0002:  ldloc.0 
	IL_0003:  newobj instance void class CilBasicBlock::'.ctor'(int32)
	IL_0008:  stloc.1 
	IL_0009:  ldarg.0 
	IL_000a:  ldfld class [mscorlib]System.Collections.Generic.IEnumerable`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> CilControlFlowGraph::instructions
	IL_000f:  callvirt instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.Generic.IEnumerable`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction>::GetEnumerator()
	IL_0014:  stloc.3 
	.try { // 0
	  IL_0015:  br IL_008e

	  IL_001a:  ldloc.3 
	  IL_001b:  callvirt instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction>::get_Current()
	  IL_0020:  stloc.2 
	  IL_0021:  ldloc.1 
	  IL_0022:  callvirt instance class [mscorlib]System.Collections.Generic.List`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> class CilBasicBlock::get_Instructions()
	  IL_0027:  ldloc.2 
	  IL_0028:  callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction>::Add(!0)
	  IL_002d:  ldarg.0 
	  IL_002e:  ldfld class [mscorlib]System.Collections.Generic.Dictionary`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction,class CilBasicBlock> CilControlFlowGraph::branchTargetInstructionDictionary
	  IL_0033:  ldloc.2 
	  IL_0034:  callvirt instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction, class CilBasicBlock>::ContainsKey(!0)
	  IL_0039:  brfalse IL_004b

	  IL_003e:  ldarg.0 
	  IL_003f:  ldfld class [mscorlib]System.Collections.Generic.Dictionary`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction,class CilBasicBlock> CilControlFlowGraph::branchTargetInstructionDictionary
	  IL_0044:  ldloc.2 
	  IL_0045:  ldloc.1 
	  IL_0046:  callvirt instance void class [mscorlib]System.Collections.Generic.Dictionary`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction, class CilBasicBlock>::set_Item(!0, !1)
	  IL_004b:  ldloc.2 
	  IL_004c:  callvirt instance class [Mono.Cecil]Mono.Cecil.Cil.Instruction class [Mono.Cecil]Mono.Cecil.Cil.Instruction::get_Next()
	  IL_0051:  brfalse IL_0077

	  IL_0056:  ldarg.0 
	  IL_0057:  ldfld class [mscorlib]System.Collections.Generic.Dictionary`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction,class CilBasicBlock> CilControlFlowGraph::branchTargetInstructionDictionary
	  IL_005c:  ldloc.2 
	  IL_005d:  callvirt instance class [Mono.Cecil]Mono.Cecil.Cil.Instruction class [Mono.Cecil]Mono.Cecil.Cil.Instruction::get_Next()
	  IL_0062:  callvirt instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction, class CilBasicBlock>::ContainsKey(!0)
	  IL_0067:  brtrue IL_0077

	  IL_006c:  ldloc.2 
	  IL_006d:  call bool class InstructionExtensions::IsControlFlowInstruction(class [Mono.Cecil]Mono.Cecil.Cil.Instruction)
	  IL_0072:  brfalse IL_008e

	  IL_0077:  ldarg.0 
	  IL_0078:  call instance class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> class CilControlFlowGraph::get_BasicBlocks()
	  IL_007d:  ldloc.1 
	  IL_007e:  callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock>::Add(!0)
	  IL_0083:  ldloc.0 
	  IL_0084:  ldc.i4.1 
	  IL_0085:  add 
	  IL_0086:  dup 
	  IL_0087:  stloc.0 
	  IL_0088:  newobj instance void class CilBasicBlock::'.ctor'(int32)
	  IL_008d:  stloc.1 
	  IL_008e:  ldloc.3 
	  IL_008f:  callvirt instance bool class [mscorlib]System.Collections.IEnumerator::MoveNext()
	  IL_0094:  brtrue IL_001a

	  IL_0099:  leave IL_00ab

	} // end .try 0
	finally  { // 0
	  IL_009e:  ldloc.3 
	  IL_009f:  brfalse IL_00aa

	  IL_00a4:  ldloc.3 
	  IL_00a5:  callvirt instance void class [mscorlib]System.IDisposable::Dispose()
	  IL_00aa:  endfinally 
	} // end handler 0
	IL_00ab:  ret 
    } // end of method CilControlFlowGraph::ConstructBasicBlocks

    // method line 42
    .method private hidebysig 
           instance default class CilBasicBlock FindInstructionBasicBlock (class [Mono.Cecil]Mono.Cecil.Cil.Instruction i)  cil managed 
    {
        // Method begins at RVA 0x2b18
	// Code size 13 (0xd)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld class [mscorlib]System.Collections.Generic.Dictionary`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction,class CilBasicBlock> CilControlFlowGraph::branchTargetInstructionDictionary
	IL_0006:  ldarg.1 
	IL_0007:  callvirt instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction, class CilBasicBlock>::get_Item(!0)
	IL_000c:  ret 
    } // end of method CilControlFlowGraph::FindInstructionBasicBlock

    // method line 43
    .method private hidebysig 
           instance default void LinkBasicBlocks ()  cil managed 
    {
        // Method begins at RVA 0x2b28
	// Code size 251 (0xfb)
	.maxstack 3
	.locals init (
		int32	V_0,
		class CilControlFlowGraph/'<LinkBasicBlocks>c__AnonStorey1'	V_1,
		class [Mono.Cecil]Mono.Cecil.Cil.Instruction	V_2,
		class [mscorlib]System.Collections.Generic.IEnumerable`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction>	V_3,
		class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock>	V_4,
		class CilBasicBlock	V_5)
	IL_0000:  ldc.i4.0 
	IL_0001:  stloc.0 
	IL_0002:  br IL_00e9

	IL_0007:  newobj instance void class CilControlFlowGraph/'<LinkBasicBlocks>c__AnonStorey1'::'.ctor'()
	IL_000c:  stloc.1 
	IL_000d:  ldloc.1 
	IL_000e:  ldarg.0 
	IL_000f:  call instance class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> class CilControlFlowGraph::get_BasicBlocks()
	IL_0014:  ldloc.0 
	IL_0015:  callvirt instance !0 class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock>::get_Item(int32)
	IL_001a:  stfld class CilBasicBlock CilControlFlowGraph/'<LinkBasicBlocks>c__AnonStorey1'::currentBasicBlock
	IL_001f:  ldloc.1 
	IL_0020:  ldfld class CilBasicBlock CilControlFlowGraph/'<LinkBasicBlocks>c__AnonStorey1'::currentBasicBlock
	IL_0025:  callvirt instance class [Mono.Cecil]Mono.Cecil.Cil.Instruction class CilBasicBlock::get_LastInstruction()
	IL_002a:  stloc.2 
	IL_002b:  ldloc.2 
	IL_002c:  call bool class InstructionExtensions::IsControlFlowInstruction(class [Mono.Cecil]Mono.Cecil.Cil.Instruction)
	IL_0031:  brfalse IL_0086

	IL_0036:  ldloc.2 
	IL_0037:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> class InstructionExtensions::GetControlFlowInstructionTargets(class [Mono.Cecil]Mono.Cecil.Cil.Instruction)
	IL_003c:  stloc.3 
	IL_003d:  ldloc.3 
	IL_003e:  ldarg.0 
	IL_003f:  ldftn instance class CilBasicBlock class CilControlFlowGraph::FindInstructionBasicBlock(class [Mono.Cecil]Mono.Cecil.Cil.Instruction)
	IL_0045:  newobj instance void class [mscorlib]System.Func`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction, class CilBasicBlock>::'.ctor'(object, native int)
	IL_004a:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!1> class [System.Core]System.Linq.Enumerable::Select<class [Mono.Cecil]Mono.Cecil.Cil.Instruction, class CilBasicBlock> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>, class [mscorlib]System.Func`2<!!0,!!1>)
	IL_004f:  call class [mscorlib]System.Collections.Generic.List`1<!!0> class [System.Core]System.Linq.Enumerable::ToList<class CilBasicBlock> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
	IL_0054:  stloc.s 4
	IL_0056:  ldloc.s 4
	IL_0058:  ldloc.1 
	IL_0059:  ldfld class CilBasicBlock CilControlFlowGraph/'<LinkBasicBlocks>c__AnonStorey1'::currentBasicBlock
	IL_005e:  callvirt instance class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> class CilBasicBlock::get_OutBasicBlocks()
	IL_0063:  ldftn instance void class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock>::Add(!0)
	IL_0069:  newobj instance void class [mscorlib]System.Action`1<class CilBasicBlock>::'.ctor'(object, native int)
	IL_006e:  callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock>::ForEach(class [mscorlib]System.Action`1<!0>)
	IL_0073:  ldloc.s 4
	IL_0075:  ldloc.1 
	IL_0076:  ldftn instance void class CilControlFlowGraph/'<LinkBasicBlocks>c__AnonStorey1'::'<>m__0'(class CilBasicBlock)
	IL_007c:  newobj instance void class [mscorlib]System.Action`1<class CilBasicBlock>::'.ctor'(object, native int)
	IL_0081:  callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock>::ForEach(class [mscorlib]System.Action`1<!0>)
	IL_0086:  ldloc.0 
	IL_0087:  ldarg.0 
	IL_0088:  call instance class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> class CilControlFlowGraph::get_BasicBlocks()
	IL_008d:  callvirt instance int32 class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock>::get_Count()
	IL_0092:  ldc.i4.1 
	IL_0093:  sub 
	IL_0094:  bge IL_00e5

	IL_0099:  ldloc.2 
	IL_009a:  call bool class InstructionExtensions::HasFallthroughInstruction(class [Mono.Cecil]Mono.Cecil.Cil.Instruction)
	IL_009f:  brfalse IL_00e5

	IL_00a4:  ldarg.0 
	IL_00a5:  call instance class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> class CilControlFlowGraph::get_BasicBlocks()
	IL_00aa:  ldloc.0 
	IL_00ab:  ldc.i4.1 
	IL_00ac:  add 
	IL_00ad:  callvirt instance !0 class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock>::get_Item(int32)
	IL_00b2:  stloc.s 5
	IL_00b4:  ldloc.1 
	IL_00b5:  ldfld class CilBasicBlock CilControlFlowGraph/'<LinkBasicBlocks>c__AnonStorey1'::currentBasicBlock
	IL_00ba:  callvirt instance class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> class CilBasicBlock::get_OutBasicBlocks()
	IL_00bf:  ldloc.s 5
	IL_00c1:  callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock>::Add(!0)
	IL_00c6:  ldloc.1 
	IL_00c7:  ldfld class CilBasicBlock CilControlFlowGraph/'<LinkBasicBlocks>c__AnonStorey1'::currentBasicBlock
	IL_00cc:  ldloc.s 5
	IL_00ce:  callvirt instance void class CilBasicBlock::set_NextBasicBlock(class CilBasicBlock)
	IL_00d3:  ldloc.s 5
	IL_00d5:  callvirt instance class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> class CilBasicBlock::get_InBasicBlocks()
	IL_00da:  ldloc.1 
	IL_00db:  ldfld class CilBasicBlock CilControlFlowGraph/'<LinkBasicBlocks>c__AnonStorey1'::currentBasicBlock
	IL_00e0:  callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock>::Add(!0)
	IL_00e5:  ldloc.0 
	IL_00e6:  ldc.i4.1 
	IL_00e7:  add 
	IL_00e8:  stloc.0 
	IL_00e9:  ldloc.0 
	IL_00ea:  ldarg.0 
	IL_00eb:  call instance class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> class CilControlFlowGraph::get_BasicBlocks()
	IL_00f0:  callvirt instance int32 class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock>::get_Count()
	IL_00f5:  blt IL_0007

	IL_00fa:  ret 
    } // end of method CilControlFlowGraph::LinkBasicBlocks

    // method line 44
    .method private static hidebysig 
           default bool '<get_ExitBasicBlocks>m__0' (class CilBasicBlock x)  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2c2f
	// Code size 15 (0xf)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  callvirt instance class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> class CilBasicBlock::get_OutBasicBlocks()
	IL_0006:  callvirt instance int32 class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock>::get_Count()
	IL_000b:  ldc.i4.0 
	IL_000c:  ceq 
	IL_000e:  ret 
    } // end of method CilControlFlowGraph::<get_ExitBasicBlocks>m__0

    // method line 45
    .method private static hidebysig 
           default bool '<FindBranchTargetInstructions>m__1' (class [Mono.Cecil]Mono.Cecil.Cil.Instruction x)  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2c3f
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call bool class InstructionExtensions::IsControlFlowInstruction(class [Mono.Cecil]Mono.Cecil.Cil.Instruction)
	IL_0006:  ret 
    } // end of method CilControlFlowGraph::<FindBranchTargetInstructions>m__1

    // method line 46
    .method private static hidebysig 
           default class [mscorlib]System.Collections.Generic.IEnumerable`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> '<FindBranchTargetInstructions>m__2' (class [Mono.Cecil]Mono.Cecil.Cil.Instruction x)  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2c47
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> class InstructionExtensions::GetControlFlowInstructionTargets(class [Mono.Cecil]Mono.Cecil.Cil.Instruction)
	IL_0006:  ret 
    } // end of method CilControlFlowGraph::<FindBranchTargetInstructions>m__2

    // method line 47
    .method private static hidebysig 
           default class [Mono.Cecil]Mono.Cecil.Cil.Instruction '<FindBranchTargetInstructions>m__3' (class [Mono.Cecil]Mono.Cecil.Cil.Instruction k)  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2c4f
	// Code size 2 (0x2)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ret 
    } // end of method CilControlFlowGraph::<FindBranchTargetInstructions>m__3

    // method line 48
    .method private static hidebysig 
           default class CilBasicBlock '<FindBranchTargetInstructions>m__4' (class [Mono.Cecil]Mono.Cecil.Cil.Instruction v)  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2c52
	// Code size 2 (0x2)
	.maxstack 8
	IL_0000:  ldnull 
	IL_0001:  ret 
    } // end of method CilControlFlowGraph::<FindBranchTargetInstructions>m__4

	.property instance class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> BasicBlocks ()
	{
		.get instance default class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> CilControlFlowGraph::get_BasicBlocks () 
		.set instance default void CilControlFlowGraph::set_BasicBlocks (class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> 'value') 
	}
	.property instance class CilBasicBlock EntryBasicBlock ()
	{
		.get instance default class CilBasicBlock CilControlFlowGraph::get_EntryBasicBlock () 
	}
	.property instance class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> ExitBasicBlocks ()
	{
		.get instance default class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> CilControlFlowGraph::get_ExitBasicBlocks () 
	}
	.property instance class [Mono.Cecil]Mono.Cecil.MethodDefinition MethodDefinition ()
	{
		.get instance default class [Mono.Cecil]Mono.Cecil.MethodDefinition CilControlFlowGraph::get_MethodDefinition () 
		.set instance default void CilControlFlowGraph::set_MethodDefinition (class [Mono.Cecil]Mono.Cecil.MethodDefinition 'value') 
	}
  .class nested private auto ansi sealed beforefieldinit '<CilControlFlowGraph>c__AnonStorey0'
  	extends [mscorlib]System.Object
  {
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .field  assembly  string typeName
    .field  assembly  string methodName

    // method line 95
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' ()  cil managed 
    {
        // Method begins at RVA 0x2c55
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance void object::'.ctor'()
	IL_0006:  ret 
    } // end of method <CilControlFlowGraph>c__AnonStorey0::.ctor

    // method line 96
    .method assembly hidebysig 
           instance default bool '<>m__0' (class [Mono.Cecil]Mono.Cecil.TypeDefinition x)  cil managed 
    {
        // Method begins at RVA 0x2c5d
	// Code size 18 (0x12)
	.maxstack 8
	IL_0000:  ldarg.1 
	IL_0001:  callvirt instance string class [Mono.Cecil]Mono.Cecil.MemberReference::get_Name()
	IL_0006:  ldarg.0 
	IL_0007:  ldfld string CilControlFlowGraph/'<CilControlFlowGraph>c__AnonStorey0'::typeName
	IL_000c:  call bool string::op_Equality(string, string)
	IL_0011:  ret 
    } // end of method <CilControlFlowGraph>c__AnonStorey0::<>m__0

    // method line 97
    .method assembly hidebysig 
           instance default bool '<>m__1' (class [Mono.Cecil]Mono.Cecil.MethodDefinition x)  cil managed 
    {
        // Method begins at RVA 0x2c70
	// Code size 18 (0x12)
	.maxstack 8
	IL_0000:  ldarg.1 
	IL_0001:  callvirt instance string class [Mono.Cecil]Mono.Cecil.MemberReference::get_Name()
	IL_0006:  ldarg.0 
	IL_0007:  ldfld string CilControlFlowGraph/'<CilControlFlowGraph>c__AnonStorey0'::methodName
	IL_000c:  call bool string::op_Equality(string, string)
	IL_0011:  ret 
    } // end of method <CilControlFlowGraph>c__AnonStorey0::<>m__1

  } // end of class <CilControlFlowGraph>c__AnonStorey0

  .class nested private auto ansi sealed beforefieldinit '<LinkBasicBlocks>c__AnonStorey1'
  	extends [mscorlib]System.Object
  {
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .field  assembly  class CilBasicBlock currentBasicBlock

    // method line 98
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' ()  cil managed 
    {
        // Method begins at RVA 0x2c83
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance void object::'.ctor'()
	IL_0006:  ret 
    } // end of method <LinkBasicBlocks>c__AnonStorey1::.ctor

    // method line 99
    .method assembly hidebysig 
           instance default void '<>m__0' (class CilBasicBlock x)  cil managed 
    {
        // Method begins at RVA 0x2c8b
	// Code size 18 (0x12)
	.maxstack 8
	IL_0000:  ldarg.1 
	IL_0001:  callvirt instance class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> class CilBasicBlock::get_InBasicBlocks()
	IL_0006:  ldarg.0 
	IL_0007:  ldfld class CilBasicBlock CilControlFlowGraph/'<LinkBasicBlocks>c__AnonStorey1'::currentBasicBlock
	IL_000c:  callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock>::Add(!0)
	IL_0011:  ret 
    } // end of method <LinkBasicBlocks>c__AnonStorey1::<>m__0

  } // end of class <LinkBasicBlocks>c__AnonStorey1

  } // end of class CilControlFlowGraph

  .class public auto ansi beforefieldinit CilBasicBlock
  	extends [mscorlib]System.Object
  {
    .field  private initonly  int32 '<Id>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  class [mscorlib]System.Collections.Generic.List`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> '<Instructions>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  class CilBasicBlock '<NextBasicBlock>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> '<InBasicBlocks>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> '<OutBasicBlocks>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private static  class [mscorlib]System.Func`2<class CilBasicBlock,int32> '<>f__am$cache0'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .field  private static  class [mscorlib]System.Func`2<class CilBasicBlock,int32> '<>f__am$cache1'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....


    // method line 49
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' (int32 id)  cil managed 
    {
        // Method begins at RVA 0x2c9e
	// Code size 54 (0x36)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance void object::'.ctor'()
	IL_0006:  ldarg.0 
	IL_0007:  ldarg.1 
	IL_0008:  stfld int32 CilBasicBlock::'<Id>k__BackingField'
	IL_000d:  ldarg.0 
	IL_000e:  ldnull 
	IL_000f:  call instance void class CilBasicBlock::set_NextBasicBlock(class CilBasicBlock)
	IL_0014:  ldarg.0 
	IL_0015:  newobj instance void class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock>::'.ctor'()
	IL_001a:  call instance void class CilBasicBlock::set_InBasicBlocks(class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock>)
	IL_001f:  ldarg.0 
	IL_0020:  newobj instance void class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock>::'.ctor'()
	IL_0025:  call instance void class CilBasicBlock::set_OutBasicBlocks(class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock>)
	IL_002a:  ldarg.0 
	IL_002b:  newobj instance void class [mscorlib]System.Collections.Generic.List`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction>::'.ctor'()
	IL_0030:  call instance void class CilBasicBlock::set_Instructions(class [mscorlib]System.Collections.Generic.List`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction>)
	IL_0035:  ret 
    } // end of method CilBasicBlock::.ctor

    // method line 50
    .method public hidebysig specialname 
           instance default int32 get_Id ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2cd5
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld int32 CilBasicBlock::'<Id>k__BackingField'
	IL_0006:  ret 
    } // end of method CilBasicBlock::get_Id

    // method line 51
    .method public hidebysig specialname 
           instance default class [mscorlib]System.Collections.Generic.List`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> get_Instructions ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2cdd
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld class [mscorlib]System.Collections.Generic.List`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> CilBasicBlock::'<Instructions>k__BackingField'
	IL_0006:  ret 
    } // end of method CilBasicBlock::get_Instructions

    // method line 52
    .method public hidebysig specialname 
           instance default void set_Instructions (class [mscorlib]System.Collections.Generic.List`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2ce5
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld class [mscorlib]System.Collections.Generic.List`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> CilBasicBlock::'<Instructions>k__BackingField'
	IL_0007:  ret 
    } // end of method CilBasicBlock::set_Instructions

    // method line 53
    .method public hidebysig specialname 
           instance default class [Mono.Cecil]Mono.Cecil.Cil.Instruction get_LastInstruction ()  cil managed 
    {
        // Method begins at RVA 0x2cee
	// Code size 12 (0xc)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance class [mscorlib]System.Collections.Generic.List`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> class CilBasicBlock::get_Instructions()
	IL_0006:  call !!0 class [System.Core]System.Linq.Enumerable::Last<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
	IL_000b:  ret 
    } // end of method CilBasicBlock::get_LastInstruction

    // method line 54
    .method public hidebysig specialname 
           instance default class CilBasicBlock get_NextBasicBlock ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2cfb
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld class CilBasicBlock CilBasicBlock::'<NextBasicBlock>k__BackingField'
	IL_0006:  ret 
    } // end of method CilBasicBlock::get_NextBasicBlock

    // method line 55
    .method public hidebysig specialname 
           instance default void set_NextBasicBlock (class CilBasicBlock 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2d03
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld class CilBasicBlock CilBasicBlock::'<NextBasicBlock>k__BackingField'
	IL_0007:  ret 
    } // end of method CilBasicBlock::set_NextBasicBlock

    // method line 56
    .method public hidebysig specialname 
           instance default class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> get_InBasicBlocks ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2d0c
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> CilBasicBlock::'<InBasicBlocks>k__BackingField'
	IL_0006:  ret 
    } // end of method CilBasicBlock::get_InBasicBlocks

    // method line 57
    .method public hidebysig specialname 
           instance default void set_InBasicBlocks (class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2d14
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> CilBasicBlock::'<InBasicBlocks>k__BackingField'
	IL_0007:  ret 
    } // end of method CilBasicBlock::set_InBasicBlocks

    // method line 58
    .method public hidebysig specialname 
           instance default class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> get_OutBasicBlocks ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2d1d
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> CilBasicBlock::'<OutBasicBlocks>k__BackingField'
	IL_0006:  ret 
    } // end of method CilBasicBlock::get_OutBasicBlocks

    // method line 59
    .method public hidebysig specialname 
           instance default void set_OutBasicBlocks (class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2d25
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> CilBasicBlock::'<OutBasicBlocks>k__BackingField'
	IL_0007:  ret 
    } // end of method CilBasicBlock::set_OutBasicBlocks

    // method line 60
    .method public virtual hidebysig 
           instance default string ToString ()  cil managed 
    {
        // Method begins at RVA 0x2d30
	// Code size 156 (0x9c)
	.maxstack 8
	IL_0000:  ldstr "BasicBlock{0}\n{1}\nin: [{2}]\nout: [{3}]\n\n"
	IL_0005:  ldc.i4.4 
	IL_0006:  newarr [mscorlib]System.Object
	IL_000b:  dup 
	IL_000c:  ldc.i4.0 
	IL_000d:  ldarg.0 
	IL_000e:  call instance int32 class CilBasicBlock::get_Id()
	IL_0013:  box [mscorlib]System.Int32
	IL_0018:  stelem.ref 
	IL_0019:  dup 
	IL_001a:  ldc.i4.1 
	IL_001b:  ldstr "\n"
	IL_0020:  ldarg.0 
	IL_0021:  call instance class [mscorlib]System.Collections.Generic.List`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> class CilBasicBlock::get_Instructions()
	IL_0026:  call string string::Join<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> (string, class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
	IL_002b:  stelem.ref 
	IL_002c:  dup 
	IL_002d:  ldc.i4.2 
	IL_002e:  ldstr ", "
	IL_0033:  ldarg.0 
	IL_0034:  call instance class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> class CilBasicBlock::get_InBasicBlocks()
	IL_0039:  ldsfld class [mscorlib]System.Func`2<class CilBasicBlock,int32> CilBasicBlock::'<>f__am$cache0'
	IL_003e:  brtrue.s IL_0051

	IL_0040:  ldnull 
	IL_0041:  ldftn int32 class CilBasicBlock::'<ToString>m__0'(class CilBasicBlock)
	IL_0047:  newobj instance void class [mscorlib]System.Func`2<class CilBasicBlock, int32>::'.ctor'(object, native int)
	IL_004c:  stsfld class [mscorlib]System.Func`2<class CilBasicBlock,int32> CilBasicBlock::'<>f__am$cache0'
	IL_0051:  ldsfld class [mscorlib]System.Func`2<class CilBasicBlock,int32> CilBasicBlock::'<>f__am$cache0'
	IL_0056:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!1> class [System.Core]System.Linq.Enumerable::Select<class CilBasicBlock, int32> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>, class [mscorlib]System.Func`2<!!0,!!1>)
	IL_005b:  call string string::Join<int32> (string, class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
	IL_0060:  stelem.ref 
	IL_0061:  dup 
	IL_0062:  ldc.i4.3 
	IL_0063:  ldstr ", "
	IL_0068:  ldarg.0 
	IL_0069:  call instance class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> class CilBasicBlock::get_OutBasicBlocks()
	IL_006e:  ldsfld class [mscorlib]System.Func`2<class CilBasicBlock,int32> CilBasicBlock::'<>f__am$cache1'
	IL_0073:  brtrue.s IL_0086

	IL_0075:  ldnull 
	IL_0076:  ldftn int32 class CilBasicBlock::'<ToString>m__1'(class CilBasicBlock)
	IL_007c:  newobj instance void class [mscorlib]System.Func`2<class CilBasicBlock, int32>::'.ctor'(object, native int)
	IL_0081:  stsfld class [mscorlib]System.Func`2<class CilBasicBlock,int32> CilBasicBlock::'<>f__am$cache1'
	IL_0086:  ldsfld class [mscorlib]System.Func`2<class CilBasicBlock,int32> CilBasicBlock::'<>f__am$cache1'
	IL_008b:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!1> class [System.Core]System.Linq.Enumerable::Select<class CilBasicBlock, int32> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>, class [mscorlib]System.Func`2<!!0,!!1>)
	IL_0090:  call string string::Join<int32> (string, class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
	IL_0095:  stelem.ref 
	IL_0096:  call string string::Format(string, object[])
	IL_009b:  ret 
    } // end of method CilBasicBlock::ToString

    // method line 61
    .method public hidebysig specialname 
           instance default string get_Label ()  cil managed 
    {
        // Method begins at RVA 0x2dd8
	// Code size 22 (0x16)
	.maxstack 8
	IL_0000:  ldstr "L"
	IL_0005:  ldarg.0 
	IL_0006:  call instance int32 class CilBasicBlock::get_Id()
	IL_000b:  box [mscorlib]System.Int32
	IL_0010:  call string string::Concat(object, object)
	IL_0015:  ret 
    } // end of method CilBasicBlock::get_Label

    // method line 62
    .method private static hidebysig 
           default int32 '<ToString>m__0' (class CilBasicBlock x)  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2def
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  callvirt instance int32 class CilBasicBlock::get_Id()
	IL_0006:  ret 
    } // end of method CilBasicBlock::<ToString>m__0

    // method line 63
    .method private static hidebysig 
           default int32 '<ToString>m__1' (class CilBasicBlock x)  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2df7
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  callvirt instance int32 class CilBasicBlock::get_Id()
	IL_0006:  ret 
    } // end of method CilBasicBlock::<ToString>m__1

	.property instance int32 Id ()
	{
		.get instance default int32 CilBasicBlock::get_Id () 
	}
	.property instance class [mscorlib]System.Collections.Generic.List`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> Instructions ()
	{
		.get instance default class [mscorlib]System.Collections.Generic.List`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> CilBasicBlock::get_Instructions () 
		.set instance default void CilBasicBlock::set_Instructions (class [mscorlib]System.Collections.Generic.List`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> 'value') 
	}
	.property instance class [Mono.Cecil]Mono.Cecil.Cil.Instruction LastInstruction ()
	{
		.get instance default class [Mono.Cecil]Mono.Cecil.Cil.Instruction CilBasicBlock::get_LastInstruction () 
	}
	.property instance class CilBasicBlock NextBasicBlock ()
	{
		.get instance default class CilBasicBlock CilBasicBlock::get_NextBasicBlock () 
		.set instance default void CilBasicBlock::set_NextBasicBlock (class CilBasicBlock 'value') 
	}
	.property instance class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> InBasicBlocks ()
	{
		.get instance default class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> CilBasicBlock::get_InBasicBlocks () 
		.set instance default void CilBasicBlock::set_InBasicBlocks (class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> 'value') 
	}
	.property instance class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> OutBasicBlocks ()
	{
		.get instance default class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> CilBasicBlock::get_OutBasicBlocks () 
		.set instance default void CilBasicBlock::set_OutBasicBlocks (class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> 'value') 
	}
	.property instance string Label ()
	{
		.get instance default string CilBasicBlock::get_Label () 
	}
  } // end of class CilBasicBlock

  .class public auto ansi beforefieldinit IrPrintingPolicy
  	extends [mscorlib]System.Object
  {
    .field  public initonly  int32 TabWidth

    // method line 64
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' (int32 tabWidth)  cil managed 
    {
        // Method begins at RVA 0x2dff
	// Code size 14 (0xe)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance void object::'.ctor'()
	IL_0006:  ldarg.0 
	IL_0007:  ldarg.1 
	IL_0008:  stfld int32 IrPrintingPolicy::TabWidth
	IL_000d:  ret 
    } // end of method IrPrintingPolicy::.ctor

    // method line 65
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' ()  cil managed 
    {
        // Method begins at RVA 0x2e0e
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldc.i4.2 
	IL_0002:  call instance void class IrPrintingPolicy::'.ctor'(int32)
	IL_0007:  ret 
    } // end of method IrPrintingPolicy::.ctor

  } // end of class IrPrintingPolicy

  .class public auto ansi beforefieldinit LinearIrDump
  	extends [mscorlib]System.Object
  {
    .field  private  class [Mono.Cecil]Mono.Cecil.ModuleDefinition moduleDefinition
    .field  public initonly  class IrPrintingPolicy IrPrintingPolicy
    .field  private  valuetype LinearIr/Algorithm '<Algorithm>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  int32 indentationLevel

    // method line 66
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' (string filename, [opt] valuetype LinearIr/Algorithm 'algorithm')  cil managed 
    {
	.param [2] = int32(0x00000000)
        // Method begins at RVA 0x2e17
	// Code size 44 (0x2c)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldc.i4.0 
	IL_0002:  stfld int32 LinearIrDump::indentationLevel
	IL_0007:  ldarg.0 
	IL_0008:  call instance void object::'.ctor'()
	IL_000d:  ldarg.0 
	IL_000e:  ldarg.1 
	IL_000f:  call class [Mono.Cecil]Mono.Cecil.ModuleDefinition class [Mono.Cecil]Mono.Cecil.ModuleDefinition::ReadModule(string)
	IL_0014:  stfld class [Mono.Cecil]Mono.Cecil.ModuleDefinition LinearIrDump::moduleDefinition
	IL_0019:  ldarg.0 
	IL_001a:  newobj instance void class IrPrintingPolicy::'.ctor'()
	IL_001f:  stfld class IrPrintingPolicy LinearIrDump::IrPrintingPolicy
	IL_0024:  ldarg.0 
	IL_0025:  ldarg.2 
	IL_0026:  call instance void class LinearIrDump::set_Algorithm(valuetype LinearIr/Algorithm)
	IL_002b:  ret 
    } // end of method LinearIrDump::.ctor

    // method line 67
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' (string filename, class IrPrintingPolicy policy, [opt] valuetype LinearIr/Algorithm 'algorithm')  cil managed 
    {
	.param [3] = int32(0x00000000)
        // Method begins at RVA 0x2e44
	// Code size 16 (0x10)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  ldarg.3 
	IL_0003:  call instance void class LinearIrDump::'.ctor'(string, valuetype LinearIr/Algorithm)
	IL_0008:  ldarg.0 
	IL_0009:  ldarg.2 
	IL_000a:  stfld class IrPrintingPolicy LinearIrDump::IrPrintingPolicy
	IL_000f:  ret 
    } // end of method LinearIrDump::.ctor

    // method line 68
    .method public hidebysig specialname 
           instance default valuetype LinearIr/Algorithm get_Algorithm ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2e55
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld valuetype LinearIr/Algorithm LinearIrDump::'<Algorithm>k__BackingField'
	IL_0006:  ret 
    } // end of method LinearIrDump::get_Algorithm

    // method line 69
    .method private hidebysig specialname 
           instance default void set_Algorithm (valuetype LinearIr/Algorithm 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2e5d
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld valuetype LinearIr/Algorithm LinearIrDump::'<Algorithm>k__BackingField'
	IL_0007:  ret 
    } // end of method LinearIrDump::set_Algorithm

    // method line 70
    .method public hidebysig 
           instance default class [mscorlib]System.Collections.Generic.IEnumerable`1<class LinearIrInstruction> GetLinearIrInstructions (class [Mono.Cecil]Mono.Cecil.MethodDefinition methodDefinition)  cil managed 
    {
        // Method begins at RVA 0x2e68
	// Code size 37 (0x25)
	.maxstack 1
	.locals init (
		class LinearIr	V_0)
	IL_0000:  ldarg.0 
	IL_0001:  call instance valuetype LinearIr/Algorithm class LinearIrDump::get_Algorithm()
	IL_0006:  brtrue IL_0017

	IL_000b:  ldarg.1 
	IL_000c:  newobj instance void class CfgTraverseLinearIr::'.ctor'(class [Mono.Cecil]Mono.Cecil.MethodDefinition)
	IL_0011:  stloc.0 
	IL_0012:  br IL_001e

	IL_0017:  ldarg.1 
	IL_0018:  newobj instance void class SingleForwardPassLinearIr::'.ctor'(class [Mono.Cecil]Mono.Cecil.MethodDefinition)
	IL_001d:  stloc.0 
	IL_001e:  ldloc.0 
	IL_001f:  callvirt instance class [mscorlib]System.Collections.Generic.IEnumerable`1<class LinearIrInstruction> class LinearIr::get_Instructions()
	IL_0024:  ret 
    } // end of method LinearIrDump::GetLinearIrInstructions

    // method line 71
    .method public hidebysig 
           instance default class [Mono.Cecil]Mono.Cecil.TypeDefinition GetTypeDefinition (string typeName)  cil managed 
    {
        // Method begins at RVA 0x2e9c
	// Code size 72 (0x48)
	.maxstack 3
	.locals init (
		class LinearIrDump/'<GetTypeDefinition>c__AnonStorey0'	V_0,
		class [Mono.Cecil]Mono.Cecil.TypeDefinition	V_1)
	IL_0000:  newobj instance void class LinearIrDump/'<GetTypeDefinition>c__AnonStorey0'::'.ctor'()
	IL_0005:  stloc.0 
	IL_0006:  ldloc.0 
	IL_0007:  ldarg.1 
	IL_0008:  stfld string LinearIrDump/'<GetTypeDefinition>c__AnonStorey0'::typeName
	IL_000d:  ldarg.0 
	IL_000e:  ldfld class [Mono.Cecil]Mono.Cecil.ModuleDefinition LinearIrDump::moduleDefinition
	IL_0013:  callvirt instance class [Mono.Cecil]Mono.Collections.Generic.Collection`1<class [Mono.Cecil]Mono.Cecil.TypeDefinition> class [Mono.Cecil]Mono.Cecil.ModuleDefinition::get_Types()
	IL_0018:  ldloc.0 
	IL_0019:  ldftn instance bool class LinearIrDump/'<GetTypeDefinition>c__AnonStorey0'::'<>m__0'(class [Mono.Cecil]Mono.Cecil.TypeDefinition)
	IL_001f:  newobj instance void class [mscorlib]System.Func`2<class [Mono.Cecil]Mono.Cecil.TypeDefinition, bool>::'.ctor'(object, native int)
	IL_0024:  call !!0 class [System.Core]System.Linq.Enumerable::FirstOrDefault<class [Mono.Cecil]Mono.Cecil.TypeDefinition> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>, class [mscorlib]System.Func`2<!!0,bool>)
	IL_0029:  stloc.1 
	IL_002a:  ldloc.1 
	IL_002b:  brtrue IL_0046

	IL_0030:  ldstr "Could not find type '{0}'"
	IL_0035:  ldloc.0 
	IL_0036:  ldfld string LinearIrDump/'<GetTypeDefinition>c__AnonStorey0'::typeName
	IL_003b:  call string string::Format(string, object)
	IL_0040:  newobj instance void class [mscorlib]System.ArgumentException::'.ctor'(string)
	IL_0045:  throw 
	IL_0046:  ldloc.1 
	IL_0047:  ret 
    } // end of method LinearIrDump::GetTypeDefinition

    // method line 72
    .method public hidebysig 
           instance default class [Mono.Cecil]Mono.Cecil.MethodDefinition GetMethodDefinition (string typeName, string methodName)  cil managed 
    {
        // Method begins at RVA 0x2ef0
	// Code size 76 (0x4c)
	.maxstack 3
	.locals init (
		class LinearIrDump/'<GetMethodDefinition>c__AnonStorey1'	V_0,
		class [Mono.Cecil]Mono.Cecil.TypeDefinition	V_1,
		class [Mono.Cecil]Mono.Cecil.MethodDefinition	V_2)
	IL_0000:  newobj instance void class LinearIrDump/'<GetMethodDefinition>c__AnonStorey1'::'.ctor'()
	IL_0005:  stloc.0 
	IL_0006:  ldloc.0 
	IL_0007:  ldarg.2 
	IL_0008:  stfld string LinearIrDump/'<GetMethodDefinition>c__AnonStorey1'::methodName
	IL_000d:  ldarg.0 
	IL_000e:  ldarg.1 
	IL_000f:  call instance class [Mono.Cecil]Mono.Cecil.TypeDefinition class LinearIrDump::GetTypeDefinition(string)
	IL_0014:  stloc.1 
	IL_0015:  ldloc.1 
	IL_0016:  callvirt instance class [Mono.Cecil]Mono.Collections.Generic.Collection`1<class [Mono.Cecil]Mono.Cecil.MethodDefinition> class [Mono.Cecil]Mono.Cecil.TypeDefinition::get_Methods()
	IL_001b:  ldloc.0 
	IL_001c:  ldftn instance bool class LinearIrDump/'<GetMethodDefinition>c__AnonStorey1'::'<>m__0'(class [Mono.Cecil]Mono.Cecil.MethodDefinition)
	IL_0022:  newobj instance void class [mscorlib]System.Func`2<class [Mono.Cecil]Mono.Cecil.MethodDefinition, bool>::'.ctor'(object, native int)
	IL_0027:  call !!0 class [System.Core]System.Linq.Enumerable::FirstOrDefault<class [Mono.Cecil]Mono.Cecil.MethodDefinition> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>, class [mscorlib]System.Func`2<!!0,bool>)
	IL_002c:  stloc.2 
	IL_002d:  ldloc.2 
	IL_002e:  brtrue IL_004a

	IL_0033:  ldstr "Could not find method '{0}' in type '{1}'"
	IL_0038:  ldloc.0 
	IL_0039:  ldfld string LinearIrDump/'<GetMethodDefinition>c__AnonStorey1'::methodName
	IL_003e:  ldarg.1 
	IL_003f:  call string string::Format(string, object, object)
	IL_0044:  newobj instance void class [mscorlib]System.ArgumentException::'.ctor'(string)
	IL_0049:  throw 
	IL_004a:  ldloc.2 
	IL_004b:  ret 
    } // end of method LinearIrDump::GetMethodDefinition

    // method line 73
    .method public hidebysig 
           instance default void Dump (class [mscorlib]System.IO.TextWriter textWriter, string typeName)  cil managed 
    {
        // Method begins at RVA 0x2f48
	// Code size 141 (0x8d)
	.maxstack 3
	.locals init (
		class [Mono.Cecil]Mono.Cecil.TypeDefinition	V_0,
		class [Mono.Cecil]Mono.Cecil.MethodDefinition	V_1,
		valuetype [Mono.Cecil]Mono.Collections.Generic.Collection`1/Enumerator<class [Mono.Cecil]Mono.Cecil.MethodDefinition>	V_2)
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.2 
	IL_0002:  call instance class [Mono.Cecil]Mono.Cecil.TypeDefinition class LinearIrDump::GetTypeDefinition(string)
	IL_0007:  stloc.0 
	IL_0008:  ldarg.1 
	IL_0009:  ldloc.0 
	IL_000a:  callvirt instance string class [Mono.Cecil]Mono.Cecil.MemberReference::get_FullName()
	IL_000f:  callvirt instance void class [mscorlib]System.IO.TextWriter::WriteLine(string)
	IL_0014:  ldarg.1 
	IL_0015:  ldstr "{"
	IL_001a:  callvirt instance void class [mscorlib]System.IO.TextWriter::WriteLine(string)
	IL_001f:  ldarg.0 
	IL_0020:  dup 
	IL_0021:  ldfld int32 LinearIrDump::indentationLevel
	IL_0026:  ldc.i4.1 
	IL_0027:  add 
	IL_0028:  stfld int32 LinearIrDump::indentationLevel
	IL_002d:  ldloc.0 
	IL_002e:  callvirt instance class [Mono.Cecil]Mono.Collections.Generic.Collection`1<class [Mono.Cecil]Mono.Cecil.MethodDefinition> class [Mono.Cecil]Mono.Cecil.TypeDefinition::get_Methods()
	IL_0033:  callvirt instance valuetype [Mono.Cecil]Mono.Collections.Generic.Collection`1/Enumerator<!0> class [Mono.Cecil]Mono.Collections.Generic.Collection`1<class [Mono.Cecil]Mono.Cecil.MethodDefinition>::GetEnumerator()
	IL_0038:  stloc.2 
	.try { // 0
	  IL_0039:  br IL_0054

	  IL_003e:  ldloca.s 2
	  IL_0040:  call instance !0 valuetype [Mono.Cecil]Mono.Collections.Generic.Collection`1/Enumerator<class [Mono.Cecil]Mono.Cecil.MethodDefinition>::get_Current()
	  IL_0045:  stloc.1 
	  IL_0046:  ldarg.0 
	  IL_0047:  ldarg.1 
	  IL_0048:  ldloc.1 
	  IL_0049:  call instance void class LinearIrDump::Dump(class [mscorlib]System.IO.TextWriter, class [Mono.Cecil]Mono.Cecil.MethodDefinition)
	  IL_004e:  ldarg.1 
	  IL_004f:  callvirt instance void class [mscorlib]System.IO.TextWriter::WriteLine()
	  IL_0054:  ldloca.s 2
	  IL_0056:  call instance bool valuetype [Mono.Cecil]Mono.Collections.Generic.Collection`1/Enumerator<class [Mono.Cecil]Mono.Cecil.MethodDefinition>::MoveNext()
	  IL_005b:  brtrue IL_003e

	  IL_0060:  leave IL_0073

	} // end .try 0
	finally  { // 0
	  IL_0065:  ldloca.s 2
	  IL_0067:  constrained. valuetype [Mono.Cecil]Mono.Collections.Generic.Collection`1/Enumerator<class [Mono.Cecil]Mono.Cecil.MethodDefinition>
	  IL_006d:  callvirt instance void class [mscorlib]System.IDisposable::Dispose()
	  IL_0072:  endfinally 
	} // end handler 0
	IL_0073:  ldarg.0 
	IL_0074:  dup 
	IL_0075:  ldfld int32 LinearIrDump::indentationLevel
	IL_007a:  ldc.i4.1 
	IL_007b:  sub 
	IL_007c:  stfld int32 LinearIrDump::indentationLevel
	IL_0081:  ldarg.1 
	IL_0082:  ldstr "}"
	IL_0087:  callvirt instance void class [mscorlib]System.IO.TextWriter::WriteLine(string)
	IL_008c:  ret 
    } // end of method LinearIrDump::Dump

    // method line 74
    .method public hidebysig 
           instance default void Dump (class [mscorlib]System.IO.TextWriter textWriter, class [Mono.Cecil]Mono.Cecil.MethodDefinition methodDefinition)  cil managed 
    {
        // Method begins at RVA 0x2ff4
	// Code size 168 (0xa8)
	.maxstack 3
	.locals init (
		class LinearIrInstruction	V_0,
		class [mscorlib]System.Collections.Generic.IEnumerator`1<class LinearIrInstruction>	V_1)
	IL_0000:  ldarg.1 
	IL_0001:  ldarg.0 
	IL_0002:  call instance string class LinearIrDump::GetIndentation()
	IL_0007:  ldarg.2 
	IL_0008:  callvirt instance string class [Mono.Cecil]Mono.Cecil.MemberReference::get_FullName()
	IL_000d:  call string string::Concat(string, string)
	IL_0012:  callvirt instance void class [mscorlib]System.IO.TextWriter::WriteLine(string)
	IL_0017:  ldarg.1 
	IL_0018:  ldarg.0 
	IL_0019:  call instance string class LinearIrDump::GetIndentation()
	IL_001e:  ldstr "{"
	IL_0023:  call string string::Concat(string, string)
	IL_0028:  callvirt instance void class [mscorlib]System.IO.TextWriter::WriteLine(string)
	IL_002d:  ldarg.0 
	IL_002e:  dup 
	IL_002f:  ldfld int32 LinearIrDump::indentationLevel
	IL_0034:  ldc.i4.1 
	IL_0035:  add 
	IL_0036:  stfld int32 LinearIrDump::indentationLevel
	IL_003b:  ldarg.0 
	IL_003c:  ldarg.2 
	IL_003d:  call instance class [mscorlib]System.Collections.Generic.IEnumerable`1<class LinearIrInstruction> class LinearIrDump::GetLinearIrInstructions(class [Mono.Cecil]Mono.Cecil.MethodDefinition)
	IL_0042:  callvirt instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.Generic.IEnumerable`1<class LinearIrInstruction>::GetEnumerator()
	IL_0047:  stloc.1 
	.try { // 0
	  IL_0048:  br IL_0066

	  IL_004d:  ldloc.1 
	  IL_004e:  callvirt instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class LinearIrInstruction>::get_Current()
	  IL_0053:  stloc.0 
	  IL_0054:  ldarg.1 
	  IL_0055:  ldarg.0 
	  IL_0056:  call instance string class LinearIrDump::GetIndentation()
	  IL_005b:  ldloc.0 
	  IL_005c:  call string string::Concat(object, object)
	  IL_0061:  callvirt instance void class [mscorlib]System.IO.TextWriter::WriteLine(string)
	  IL_0066:  ldloc.1 
	  IL_0067:  callvirt instance bool class [mscorlib]System.Collections.IEnumerator::MoveNext()
	  IL_006c:  brtrue IL_004d

	  IL_0071:  leave IL_0083

	} // end .try 0
	finally  { // 0
	  IL_0076:  ldloc.1 
	  IL_0077:  brfalse IL_0082

	  IL_007c:  ldloc.1 
	  IL_007d:  callvirt instance void class [mscorlib]System.IDisposable::Dispose()
	  IL_0082:  endfinally 
	} // end handler 0
	IL_0083:  ldarg.0 
	IL_0084:  dup 
	IL_0085:  ldfld int32 LinearIrDump::indentationLevel
	IL_008a:  ldc.i4.1 
	IL_008b:  sub 
	IL_008c:  stfld int32 LinearIrDump::indentationLevel
	IL_0091:  ldarg.1 
	IL_0092:  ldarg.0 
	IL_0093:  call instance string class LinearIrDump::GetIndentation()
	IL_0098:  ldstr "}"
	IL_009d:  call string string::Concat(string, string)
	IL_00a2:  callvirt instance void class [mscorlib]System.IO.TextWriter::WriteLine(string)
	IL_00a7:  ret 
    } // end of method LinearIrDump::Dump

    // method line 75
    .method public hidebysig 
           instance default void Dump (class [mscorlib]System.IO.TextWriter textWriter, string typeName, string methodName)  cil managed 
    {
        // Method begins at RVA 0x30b8
	// Code size 18 (0x12)
	.maxstack 3
	.locals init (
		class [Mono.Cecil]Mono.Cecil.MethodDefinition	V_0)
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.2 
	IL_0002:  ldarg.3 
	IL_0003:  call instance class [Mono.Cecil]Mono.Cecil.MethodDefinition class LinearIrDump::GetMethodDefinition(string, string)
	IL_0008:  stloc.0 
	IL_0009:  ldarg.0 
	IL_000a:  ldarg.1 
	IL_000b:  ldloc.0 
	IL_000c:  call instance void class LinearIrDump::Dump(class [mscorlib]System.IO.TextWriter, class [Mono.Cecil]Mono.Cecil.MethodDefinition)
	IL_0011:  ret 
    } // end of method LinearIrDump::Dump

    // method line 76
    .method public hidebysig 
           instance default void Dump (string typeName)  cil managed 
    {
        // Method begins at RVA 0x30d6
	// Code size 13 (0xd)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call class [mscorlib]System.IO.TextWriter class [mscorlib]System.Console::get_Out()
	IL_0006:  ldarg.1 
	IL_0007:  call instance void class LinearIrDump::Dump(class [mscorlib]System.IO.TextWriter, string)
	IL_000c:  ret 
    } // end of method LinearIrDump::Dump

    // method line 77
    .method public hidebysig 
           instance default void Dump (string typeName, string methodName)  cil managed 
    {
        // Method begins at RVA 0x30e4
	// Code size 14 (0xe)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call class [mscorlib]System.IO.TextWriter class [mscorlib]System.Console::get_Out()
	IL_0006:  ldarg.1 
	IL_0007:  ldarg.2 
	IL_0008:  call instance void class LinearIrDump::Dump(class [mscorlib]System.IO.TextWriter, string, string)
	IL_000d:  ret 
    } // end of method LinearIrDump::Dump

    // method line 78
    .method public hidebysig 
           instance default void DumpCfg (string typeName, string methodName)  cil managed 
    {
        // Method begins at RVA 0x30f4
	// Code size 28 (0x1c)
	.maxstack 3
	.locals init (
		class [Mono.Cecil]Mono.Cecil.MethodDefinition	V_0,
		class CilControlFlowGraph	V_1)
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  ldarg.2 
	IL_0003:  call instance class [Mono.Cecil]Mono.Cecil.MethodDefinition class LinearIrDump::GetMethodDefinition(string, string)
	IL_0008:  stloc.0 
	IL_0009:  ldloc.0 
	IL_000a:  newobj instance void class CilControlFlowGraph::'.ctor'(class [Mono.Cecil]Mono.Cecil.MethodDefinition)
	IL_000f:  stloc.1 
	IL_0010:  call class [mscorlib]System.IO.TextWriter class [mscorlib]System.Console::get_Out()
	IL_0015:  ldloc.1 
	IL_0016:  callvirt instance void class [mscorlib]System.IO.TextWriter::WriteLine(object)
	IL_001b:  ret 
    } // end of method LinearIrDump::DumpCfg

    // method line 79
    .method private hidebysig 
           instance default string GetIndentation ()  cil managed 
    {
        // Method begins at RVA 0x311c
	// Code size 26 (0x1a)
	.maxstack 8
	IL_0000:  ldc.i4.s 0x20
	IL_0002:  ldarg.0 
	IL_0003:  ldfld int32 LinearIrDump::indentationLevel
	IL_0008:  ldarg.0 
	IL_0009:  ldfld class IrPrintingPolicy LinearIrDump::IrPrintingPolicy
	IL_000e:  ldfld int32 IrPrintingPolicy::TabWidth
	IL_0013:  mul 
	IL_0014:  newobj instance void string::'.ctor'(char, int32)
	IL_0019:  ret 
    } // end of method LinearIrDump::GetIndentation

	.property instance valuetype LinearIr/Algorithm Algorithm ()
	{
		.get instance default valuetype LinearIr/Algorithm LinearIrDump::get_Algorithm () 
		.set instance default void LinearIrDump::set_Algorithm (valuetype LinearIr/Algorithm 'value') 
	}
  .class nested private auto ansi sealed beforefieldinit '<GetTypeDefinition>c__AnonStorey0'
  	extends [mscorlib]System.Object
  {
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .field  assembly  string typeName

    // method line 100
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' ()  cil managed 
    {
        // Method begins at RVA 0x3137
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance void object::'.ctor'()
	IL_0006:  ret 
    } // end of method <GetTypeDefinition>c__AnonStorey0::.ctor

    // method line 101
    .method assembly hidebysig 
           instance default bool '<>m__0' (class [Mono.Cecil]Mono.Cecil.TypeDefinition x)  cil managed 
    {
        // Method begins at RVA 0x313f
	// Code size 18 (0x12)
	.maxstack 8
	IL_0000:  ldarg.1 
	IL_0001:  callvirt instance string class [Mono.Cecil]Mono.Cecil.MemberReference::get_Name()
	IL_0006:  ldarg.0 
	IL_0007:  ldfld string LinearIrDump/'<GetTypeDefinition>c__AnonStorey0'::typeName
	IL_000c:  call bool string::op_Equality(string, string)
	IL_0011:  ret 
    } // end of method <GetTypeDefinition>c__AnonStorey0::<>m__0

  } // end of class <GetTypeDefinition>c__AnonStorey0

  .class nested private auto ansi sealed beforefieldinit '<GetMethodDefinition>c__AnonStorey1'
  	extends [mscorlib]System.Object
  {
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .field  assembly  string methodName

    // method line 102
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' ()  cil managed 
    {
        // Method begins at RVA 0x3152
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance void object::'.ctor'()
	IL_0006:  ret 
    } // end of method <GetMethodDefinition>c__AnonStorey1::.ctor

    // method line 103
    .method assembly hidebysig 
           instance default bool '<>m__0' (class [Mono.Cecil]Mono.Cecil.MethodDefinition x)  cil managed 
    {
        // Method begins at RVA 0x315a
	// Code size 18 (0x12)
	.maxstack 8
	IL_0000:  ldarg.1 
	IL_0001:  callvirt instance string class [Mono.Cecil]Mono.Cecil.MemberReference::get_Name()
	IL_0006:  ldarg.0 
	IL_0007:  ldfld string LinearIrDump/'<GetMethodDefinition>c__AnonStorey1'::methodName
	IL_000c:  call bool string::op_Equality(string, string)
	IL_0011:  ret 
    } // end of method <GetMethodDefinition>c__AnonStorey1::<>m__0

  } // end of class <GetMethodDefinition>c__AnonStorey1

  } // end of class LinearIrDump

  .class public auto ansi beforefieldinit CfgTraverseLinearIr
  	extends LinearIr
  {
    .field  private  class CilControlFlowGraph cfg

    // method line 80
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' (class [Mono.Cecil]Mono.Cecil.MethodDefinition methodDefinition)  cil managed 
    {
        // Method begins at RVA 0x316d
	// Code size 26 (0x1a)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  call instance void class LinearIr::'.ctor'(class [Mono.Cecil]Mono.Cecil.MethodDefinition)
	IL_0007:  ldarg.0 
	IL_0008:  ldarg.1 
	IL_0009:  newobj instance void class CilControlFlowGraph::'.ctor'(class [Mono.Cecil]Mono.Cecil.MethodDefinition)
	IL_000e:  stfld class CilControlFlowGraph CfgTraverseLinearIr::cfg
	IL_0013:  ldarg.0 
	IL_0014:  call instance void class CfgTraverseLinearIr::SetLinearIrInstructions()
	IL_0019:  ret 
    } // end of method CfgTraverseLinearIr::.ctor

    // method line 81
    .method private hidebysig 
           instance default void SetLinearIrInstructions ()  cil managed 
    {
        // Method begins at RVA 0x3188
	// Code size 158 (0x9e)
	.maxstack 4
	.locals init (
		class CfgTraverseLinearIr/'<SetLinearIrInstructions>c__AnonStorey0'	V_0,
		class CilBasicBlock	V_1,
		valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class CilBasicBlock>	V_2)
	IL_0000:  newobj instance void class CfgTraverseLinearIr/'<SetLinearIrInstructions>c__AnonStorey0'::'.ctor'()
	IL_0005:  stloc.0 
	IL_0006:  ldloc.0 
	IL_0007:  newobj instance void class [mscorlib]System.Collections.Generic.Dictionary`2<class CilBasicBlock, class [mscorlib]System.Collections.Generic.IEnumerable`1<class LinearIrInstruction>>::'.ctor'()
	IL_000c:  stfld class [mscorlib]System.Collections.Generic.Dictionary`2<class CilBasicBlock,class [mscorlib]System.Collections.Generic.IEnumerable`1<class LinearIrInstruction>> CfgTraverseLinearIr/'<SetLinearIrInstructions>c__AnonStorey0'::visited
	IL_0011:  ldarg.0 
	IL_0012:  ldfld class CilControlFlowGraph CfgTraverseLinearIr::cfg
	IL_0017:  callvirt instance class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> class CilControlFlowGraph::get_BasicBlocks()
	IL_001c:  callvirt instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock>::GetEnumerator()
	IL_0021:  stloc.2 
	.try { // 0
	  IL_0022:  br IL_005c

	  IL_0027:  ldloca.s 2
	  IL_0029:  call instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class CilBasicBlock>::get_Current()
	  IL_002e:  stloc.1 
	  IL_002f:  ldloc.0 
	  IL_0030:  ldfld class [mscorlib]System.Collections.Generic.Dictionary`2<class CilBasicBlock,class [mscorlib]System.Collections.Generic.IEnumerable`1<class LinearIrInstruction>> CfgTraverseLinearIr/'<SetLinearIrInstructions>c__AnonStorey0'::visited
	  IL_0035:  ldloc.1 
	  IL_0036:  callvirt instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<class CilBasicBlock, class [mscorlib]System.Collections.Generic.IEnumerable`1<class LinearIrInstruction>>::ContainsKey(!0)
	  IL_003b:  brfalse IL_0045

	  IL_0040:  leave IL_005c

	  IL_0045:  ldarg.0 
	  IL_0046:  ldarg.0 
	  IL_0047:  ldfld class CilControlFlowGraph CfgTraverseLinearIr::cfg
	  IL_004c:  callvirt instance class CilBasicBlock class CilControlFlowGraph::get_EntryBasicBlock()
	  IL_0051:  ldloc.0 
	  IL_0052:  ldfld class [mscorlib]System.Collections.Generic.Dictionary`2<class CilBasicBlock,class [mscorlib]System.Collections.Generic.IEnumerable`1<class LinearIrInstruction>> CfgTraverseLinearIr/'<SetLinearIrInstructions>c__AnonStorey0'::visited
	  IL_0057:  call instance void class CfgTraverseLinearIr::RecursiveDFS(class CilBasicBlock, class [mscorlib]System.Collections.Generic.Dictionary`2<class CilBasicBlock,class [mscorlib]System.Collections.Generic.IEnumerable`1<class LinearIrInstruction>>)
	  IL_005c:  ldloca.s 2
	  IL_005e:  call instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class CilBasicBlock>::MoveNext()
	  IL_0063:  brtrue IL_0027

	  IL_0068:  leave IL_007b

	} // end .try 0
	finally  { // 0
	  IL_006d:  ldloca.s 2
	  IL_006f:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class CilBasicBlock>
	  IL_0075:  callvirt instance void class [mscorlib]System.IDisposable::Dispose()
	  IL_007a:  endfinally 
	} // end handler 0
	IL_007b:  ldarg.0 
	IL_007c:  ldarg.0 
	IL_007d:  ldfld class CilControlFlowGraph CfgTraverseLinearIr::cfg
	IL_0082:  callvirt instance class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> class CilControlFlowGraph::get_BasicBlocks()
	IL_0087:  ldloc.0 
	IL_0088:  ldftn instance class [mscorlib]System.Collections.Generic.IEnumerable`1<class LinearIrInstruction> class CfgTraverseLinearIr/'<SetLinearIrInstructions>c__AnonStorey0'::'<>m__0'(class CilBasicBlock)
	IL_008e:  newobj instance void class [mscorlib]System.Func`2<class CilBasicBlock, class [mscorlib]System.Collections.Generic.IEnumerable`1<class LinearIrInstruction>>::'.ctor'(object, native int)
	IL_0093:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!1> class [System.Core]System.Linq.Enumerable::SelectMany<class CilBasicBlock, class LinearIrInstruction> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>, class [mscorlib]System.Func`2<!!0,class [mscorlib]System.Collections.Generic.IEnumerable`1<!!1>>)
	IL_0098:  call instance void class LinearIr::set_Instructions(class [mscorlib]System.Collections.Generic.IEnumerable`1<class LinearIrInstruction>)
	IL_009d:  ret 
    } // end of method CfgTraverseLinearIr::SetLinearIrInstructions

    // method line 82
    .method private hidebysig 
           instance default class [mscorlib]System.Collections.Generic.IEnumerable`1<class LinearIrInstruction> GetBasicBlockLinearIrInstructions (class CilBasicBlock basicBlock)  cil managed 
    {
        // Method begins at RVA 0x3244
	// Code size 24 (0x18)
	.maxstack 8
	IL_0000:  ldarg.1 
	IL_0001:  callvirt instance class [mscorlib]System.Collections.Generic.List`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> class CilBasicBlock::get_Instructions()
	IL_0006:  ldarg.0 
	IL_0007:  ldftn instance class LinearIrInstruction class LinearIr::GetLinearIrInstructionFrom(class [Mono.Cecil]Mono.Cecil.Cil.Instruction)
	IL_000d:  newobj instance void class [mscorlib]System.Func`2<class [Mono.Cecil]Mono.Cecil.Cil.Instruction, class LinearIrInstruction>::'.ctor'(object, native int)
	IL_0012:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!1> class [System.Core]System.Linq.Enumerable::Select<class [Mono.Cecil]Mono.Cecil.Cil.Instruction, class LinearIrInstruction> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>, class [mscorlib]System.Func`2<!!0,!!1>)
	IL_0017:  ret 
    } // end of method CfgTraverseLinearIr::GetBasicBlockLinearIrInstructions

    // method line 83
    .method private hidebysig 
           instance default void RecursiveDFS (class CilBasicBlock basicBlock, class [mscorlib]System.Collections.Generic.Dictionary`2<class CilBasicBlock, class [mscorlib]System.Collections.Generic.IEnumerable`1<class LinearIrInstruction>> visited)  cil managed 
    {
        // Method begins at RVA 0x3260
	// Code size 105 (0x69)
	.maxstack 4
	.locals init (
		class CilBasicBlock	V_0,
		valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class CilBasicBlock>	V_1,
		int32	V_2)
	IL_0000:  ldarg.2 
	IL_0001:  ldarg.1 
	IL_0002:  ldarg.0 
	IL_0003:  ldarg.1 
	IL_0004:  call instance class [mscorlib]System.Collections.Generic.IEnumerable`1<class LinearIrInstruction> class CfgTraverseLinearIr::GetBasicBlockLinearIrInstructions(class CilBasicBlock)
	IL_0009:  callvirt instance void class [mscorlib]System.Collections.Generic.Dictionary`2<class CilBasicBlock, class [mscorlib]System.Collections.Generic.IEnumerable`1<class LinearIrInstruction>>::Add(!0, !1)
	IL_000e:  ldarg.1 
	IL_000f:  callvirt instance class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock> class CilBasicBlock::get_OutBasicBlocks()
	IL_0014:  callvirt instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class CilBasicBlock>::GetEnumerator()
	IL_0019:  stloc.1 
	.try { // 0
	  IL_001a:  br IL_0049

	  IL_001f:  ldloca.s 1
	  IL_0021:  call instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class CilBasicBlock>::get_Current()
	  IL_0026:  stloc.0 
	  IL_0027:  ldarg.2 
	  IL_0028:  ldloc.0 
	  IL_0029:  callvirt instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<class CilBasicBlock, class [mscorlib]System.Collections.Generic.IEnumerable`1<class LinearIrInstruction>>::ContainsKey(!0)
	  IL_002e:  brtrue IL_0049

	  IL_0033:  ldarg.0 
	  IL_0034:  ldfld int32 LinearIr::evaluationStackSize
	  IL_0039:  stloc.2 
	  IL_003a:  ldarg.0 
	  IL_003b:  ldloc.0 
	  IL_003c:  ldarg.2 
	  IL_003d:  call instance void class CfgTraverseLinearIr::RecursiveDFS(class CilBasicBlock, class [mscorlib]System.Collections.Generic.Dictionary`2<class CilBasicBlock,class [mscorlib]System.Collections.Generic.IEnumerable`1<class LinearIrInstruction>>)
	  IL_0042:  ldarg.0 
	  IL_0043:  ldloc.2 
	  IL_0044:  stfld int32 LinearIr::evaluationStackSize
	  IL_0049:  ldloca.s 1
	  IL_004b:  call instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class CilBasicBlock>::MoveNext()
	  IL_0050:  brtrue IL_001f

	  IL_0055:  leave IL_0068

	} // end .try 0
	finally  { // 0
	  IL_005a:  ldloca.s 1
	  IL_005c:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class CilBasicBlock>
	  IL_0062:  callvirt instance void class [mscorlib]System.IDisposable::Dispose()
	  IL_0067:  endfinally 
	} // end handler 0
	IL_0068:  ret 
    } // end of method CfgTraverseLinearIr::RecursiveDFS

  .class nested private auto ansi sealed beforefieldinit '<SetLinearIrInstructions>c__AnonStorey0'
  	extends [mscorlib]System.Object
  {
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .field  assembly  class [mscorlib]System.Collections.Generic.Dictionary`2<class CilBasicBlock,class [mscorlib]System.Collections.Generic.IEnumerable`1<class LinearIrInstruction>> visited

    // method line 104
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' ()  cil managed 
    {
        // Method begins at RVA 0x32e8
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance void object::'.ctor'()
	IL_0006:  ret 
    } // end of method <SetLinearIrInstructions>c__AnonStorey0::.ctor

    // method line 105
    .method assembly hidebysig 
           instance default class [mscorlib]System.Collections.Generic.IEnumerable`1<class LinearIrInstruction> '<>m__0' (class CilBasicBlock x)  cil managed 
    {
        // Method begins at RVA 0x32f0
	// Code size 13 (0xd)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld class [mscorlib]System.Collections.Generic.Dictionary`2<class CilBasicBlock,class [mscorlib]System.Collections.Generic.IEnumerable`1<class LinearIrInstruction>> CfgTraverseLinearIr/'<SetLinearIrInstructions>c__AnonStorey0'::visited
	IL_0006:  ldarg.1 
	IL_0007:  callvirt instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<class CilBasicBlock, class [mscorlib]System.Collections.Generic.IEnumerable`1<class LinearIrInstruction>>::get_Item(!0)
	IL_000c:  ret 
    } // end of method <SetLinearIrInstructions>c__AnonStorey0::<>m__0

  } // end of class <SetLinearIrInstructions>c__AnonStorey0

  } // end of class CfgTraverseLinearIr

  .class public auto ansi beforefieldinit SingleForwardPassLinearIr
  	extends LinearIr
  {

    // method line 84
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' (class [Mono.Cecil]Mono.Cecil.MethodDefinition methodDefinition)  cil managed 
    {
        // Method begins at RVA 0x32fe
	// Code size 14 (0xe)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  call instance void class LinearIr::'.ctor'(class [Mono.Cecil]Mono.Cecil.MethodDefinition)
	IL_0007:  ldarg.0 
	IL_0008:  call instance void class SingleForwardPassLinearIr::SetLinearIrInstructions()
	IL_000d:  ret 
    } // end of method SingleForwardPassLinearIr::.ctor

    // method line 85
    .method private hidebysig 
           instance default void SetLinearIrInstructions ()  cil managed 
    {
        // Method begins at RVA 0x3310
	// Code size 126 (0x7e)
	.maxstack 3
	.locals init (
		class LinearIrInstruction[]	V_0,
		int32	V_1,
		class [Mono.Cecil]Mono.Cecil.Cil.Instruction	V_2,
		class LinearIrInstruction	V_3)
	IL_0000:  ldarg.0 
	IL_0001:  call instance class [Mono.Cecil]Mono.Cecil.MethodDefinition class LinearIr::get_MethodDefinition()
	IL_0006:  callvirt instance class [Mono.Cecil]Mono.Cecil.Cil.MethodBody class [Mono.Cecil]Mono.Cecil.MethodDefinition::get_Body()
	IL_000b:  callvirt instance class [Mono.Cecil]Mono.Collections.Generic.Collection`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> class [Mono.Cecil]Mono.Cecil.Cil.MethodBody::get_Instructions()
	IL_0010:  callvirt instance int32 class [Mono.Cecil]Mono.Collections.Generic.Collection`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction>::get_Count()
	IL_0015:  newarr LinearIrInstruction
	IL_001a:  stloc.0 
	IL_001b:  ldc.i4.0 
	IL_001c:  stloc.1 
	IL_001d:  br IL_005b

	IL_0022:  ldarg.0 
	IL_0023:  call instance class [Mono.Cecil]Mono.Cecil.MethodDefinition class LinearIr::get_MethodDefinition()
	IL_0028:  callvirt instance class [Mono.Cecil]Mono.Cecil.Cil.MethodBody class [Mono.Cecil]Mono.Cecil.MethodDefinition::get_Body()
	IL_002d:  callvirt instance class [Mono.Cecil]Mono.Collections.Generic.Collection`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> class [Mono.Cecil]Mono.Cecil.Cil.MethodBody::get_Instructions()
	IL_0032:  ldloc.1 
	IL_0033:  callvirt instance !0 class [Mono.Cecil]Mono.Collections.Generic.Collection`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction>::get_Item(int32)
	IL_0038:  stloc.2 
	IL_0039:  ldarg.0 
	IL_003a:  ldloc.2 
	IL_003b:  call instance class LinearIrInstruction class LinearIr::GetLinearIrInstructionFrom(class [Mono.Cecil]Mono.Cecil.Cil.Instruction)
	IL_0040:  stloc.3 
	IL_0041:  ldloc.0 
	IL_0042:  ldloc.1 
	IL_0043:  ldloc.3 
	IL_0044:  stelem.ref 
	IL_0045:  ldloc.2 
	IL_0046:  call bool class InstructionExtensions::HasFallthroughInstruction(class [Mono.Cecil]Mono.Cecil.Cil.Instruction)
	IL_004b:  brtrue IL_0057

	IL_0050:  ldarg.0 
	IL_0051:  ldc.i4.0 
	IL_0052:  stfld int32 LinearIr::evaluationStackSize
	IL_0057:  ldloc.1 
	IL_0058:  ldc.i4.1 
	IL_0059:  add 
	IL_005a:  stloc.1 
	IL_005b:  ldloc.1 
	IL_005c:  ldarg.0 
	IL_005d:  call instance class [Mono.Cecil]Mono.Cecil.MethodDefinition class LinearIr::get_MethodDefinition()
	IL_0062:  callvirt instance class [Mono.Cecil]Mono.Cecil.Cil.MethodBody class [Mono.Cecil]Mono.Cecil.MethodDefinition::get_Body()
	IL_0067:  callvirt instance class [Mono.Cecil]Mono.Collections.Generic.Collection`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction> class [Mono.Cecil]Mono.Cecil.Cil.MethodBody::get_Instructions()
	IL_006c:  callvirt instance int32 class [Mono.Cecil]Mono.Collections.Generic.Collection`1<class [Mono.Cecil]Mono.Cecil.Cil.Instruction>::get_Count()
	IL_0071:  blt IL_0022

	IL_0076:  ldarg.0 
	IL_0077:  ldloc.0 
	IL_0078:  call instance void class LinearIr::set_Instructions(class [mscorlib]System.Collections.Generic.IEnumerable`1<class LinearIrInstruction>)
	IL_007d:  ret 
    } // end of method SingleForwardPassLinearIr::SetLinearIrInstructions

  } // end of class SingleForwardPassLinearIr

  .class public auto ansi abstract sealed beforefieldinit Application
  	extends [mscorlib]System.Object
  {
    .field  private static  bool showHelp
    .field  private static  bool dumpCfg
    .field  private static  string moduleFilename
    .field  private static  string typeName
    .field  private static  string methodName
    .field  private static  string dumpFile
    .field  private static  string 'algorithm'
    .field  private static  class [Mono.Options]Mono.Options.OptionSet optionSet

    // method line 86
    .method private static hidebysig 
           default void ShowHelp (class [Mono.Options]Mono.Options.OptionSet optionSet)  cil managed 
    {
        // Method begins at RVA 0x339a
	// Code size 47 (0x2f)
	.maxstack 8
	IL_0000:  ldstr "Usage: LinearIrDump [OPTIONS]... MODULE_FILE"
	IL_0005:  call void class [mscorlib]System.Console::WriteLine(string)
	IL_000a:  ldstr "Convert the stack-based IR code in MODULE_FILE to a linear representation."
	IL_000f:  call void class [mscorlib]System.Console::WriteLine(string)
	IL_0014:  call void class [mscorlib]System.Console::WriteLine()
	IL_0019:  ldstr "Options:"
	IL_001e:  call void class [mscorlib]System.Console::WriteLine(string)
	IL_0023:  ldarg.0 
	IL_0024:  call class [mscorlib]System.IO.TextWriter class [mscorlib]System.Console::get_Out()
	IL_0029:  callvirt instance void class [Mono.Options]Mono.Options.OptionSet::WriteOptionDescriptions(class [mscorlib]System.IO.TextWriter)
	IL_002e:  ret 
    } // end of method Application::ShowHelp

    // method line 87
    .method public static hidebysig 
           default void Main (string[] args)  cil managed 
    {
        // Method begins at RVA 0x33cc
	.entrypoint
	// Code size 368 (0x170)
	.maxstack 4
	.locals init (
		class [mscorlib]System.Collections.Generic.List`1<string>	V_0,
		class [Mono.Options]Mono.Options.OptionException	V_1,
		class LinearIrDump	V_2,
		class [mscorlib]System.IO.TextWriter	V_3)
	.try { // 0
	  IL_0000:  ldsfld class [Mono.Options]Mono.Options.OptionSet Application::optionSet
	  IL_0005:  ldarg.0 
	  IL_0006:  callvirt instance class [mscorlib]System.Collections.Generic.List`1<string> class [Mono.Options]Mono.Options.OptionSet::Parse(class [mscorlib]System.Collections.Generic.IEnumerable`1<string>)
	  IL_000b:  stloc.0 
	  IL_000c:  leave IL_0036

	} // end .try 0
	catch class [Mono.Options]Mono.Options.OptionException { // 0
	  IL_0011:  stloc.1 
	  IL_0012:  ldstr "LinearIrDump: "
	  IL_0017:  call void class [mscorlib]System.Console::Write(string)
	  IL_001c:  ldloc.1 
	  IL_001d:  callvirt instance string class [mscorlib]System.Exception::get_Message()
	  IL_0022:  call void class [mscorlib]System.Console::WriteLine(string)
	  IL_0027:  ldstr "Try `LinearIrDump --help' for more information."
	  IL_002c:  call void class [mscorlib]System.Console::WriteLine(string)
	  IL_0031:  leave IL_016f

	} // end handler 0
	IL_0036:  ldsfld bool Application::showHelp
	IL_003b:  brfalse IL_004b

	IL_0040:  ldsfld class [Mono.Options]Mono.Options.OptionSet Application::optionSet
	IL_0045:  call void class Application::ShowHelp(class [Mono.Options]Mono.Options.OptionSet)
	IL_004a:  ret 
	IL_004b:  ldloc.0 
	IL_004c:  call bool class [System.Core]System.Linq.Enumerable::Any<string> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
	IL_0051:  brtrue IL_0061

	IL_0056:  ldstr "No modules specified... Exiting."
	IL_005b:  call void class [mscorlib]System.Console::WriteLine(string)
	IL_0060:  ret 
	IL_0061:  ldloc.0 
	IL_0062:  call !!0 class [System.Core]System.Linq.Enumerable::First<string> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
	IL_0067:  stsfld string Application::moduleFilename
	IL_006c:  ldsfld string Application::typeName
	IL_0071:  brtrue IL_0081

	IL_0076:  ldstr "No type specified... Exiting"
	IL_007b:  call void class [mscorlib]System.Console::WriteLine(string)
	IL_0080:  ret 
	IL_0081:  ldsfld bool Application::dumpCfg
	IL_0086:  brfalse IL_00bd

	IL_008b:  ldsfld string Application::methodName
	IL_0090:  brtrue IL_00a0

	IL_0095:  ldstr "Missing method... Exiting"
	IL_009a:  call void class [mscorlib]System.Console::WriteLine(string)
	IL_009f:  ret 
	IL_00a0:  ldsfld string Application::moduleFilename
	IL_00a5:  ldc.i4.0 
	IL_00a6:  newobj instance void class LinearIrDump::'.ctor'(string, valuetype LinearIr/Algorithm)
	IL_00ab:  stloc.2 
	IL_00ac:  ldloc.2 
	IL_00ad:  ldsfld string Application::typeName
	IL_00b2:  ldsfld string Application::methodName
	IL_00b7:  callvirt instance void class LinearIrDump::DumpCfg(string, string)
	IL_00bc:  ret 
	IL_00bd:  ldsfld string Application::'algorithm'
	IL_00c2:  ldstr "cfgtraverse"
	IL_00c7:  call bool string::op_Equality(string, string)
	IL_00cc:  brfalse IL_00e2

	IL_00d1:  ldsfld string Application::moduleFilename
	IL_00d6:  ldc.i4.0 
	IL_00d7:  newobj instance void class LinearIrDump::'.ctor'(string, valuetype LinearIr/Algorithm)
	IL_00dc:  stloc.2 
	IL_00dd:  br IL_0112

	IL_00e2:  ldsfld string Application::'algorithm'
	IL_00e7:  ldstr "forwardpass"
	IL_00ec:  call bool string::op_Equality(string, string)
	IL_00f1:  brfalse IL_0107

	IL_00f6:  ldsfld string Application::moduleFilename
	IL_00fb:  ldc.i4.1 
	IL_00fc:  newobj instance void class LinearIrDump::'.ctor'(string, valuetype LinearIr/Algorithm)
	IL_0101:  stloc.2 
	IL_0102:  br IL_0112

	IL_0107:  ldstr "Invalid conversion algorithm... Exiting"
	IL_010c:  call void class [mscorlib]System.Console::WriteLine(string)
	IL_0111:  ret 
	IL_0112:  ldsfld string Application::dumpFile
	IL_0117:  brtrue IL_0126

	IL_011c:  call class [mscorlib]System.IO.TextWriter class [mscorlib]System.Console::get_Out()
	IL_0121:  br IL_0130

	IL_0126:  ldsfld string Application::dumpFile
	IL_012b:  newobj instance void class [mscorlib]System.IO.StreamWriter::'.ctor'(string)
	IL_0130:  stloc.3 
	.try { // 1
	  IL_0131:  ldsfld string Application::methodName
	  IL_0136:  brtrue IL_014c

	  IL_013b:  ldloc.2 
	  IL_013c:  ldloc.3 
	  IL_013d:  ldsfld string Application::typeName
	  IL_0142:  callvirt instance void class LinearIrDump::Dump(class [mscorlib]System.IO.TextWriter, string)
	  IL_0147:  br IL_015d

	  IL_014c:  ldloc.2 
	  IL_014d:  ldloc.3 
	  IL_014e:  ldsfld string Application::typeName
	  IL_0153:  ldsfld string Application::methodName
	  IL_0158:  callvirt instance void class LinearIrDump::Dump(class [mscorlib]System.IO.TextWriter, string, string)
	  IL_015d:  leave IL_016f

	} // end .try 1
	finally  { // 1
	  IL_0162:  ldloc.3 
	  IL_0163:  brfalse IL_016e

	  IL_0168:  ldloc.3 
	  IL_0169:  callvirt instance void class [mscorlib]System.IDisposable::Dispose()
	  IL_016e:  endfinally 
	} // end handler 1
	IL_016f:  ret 
    } // end of method Application::Main

    // method line 88
    .method private static hidebysig specialname rtspecialname 
           default void '.cctor' ()  cil managed 
    {
        // Method begins at RVA 0x3564
	// Code size 233 (0xe9)
	.maxstack 5
	.locals init (
		class [Mono.Options]Mono.Options.OptionSet	V_0)
	IL_0000:  ldc.i4.0 
	IL_0001:  stsfld bool Application::showHelp
	IL_0006:  ldc.i4.0 
	IL_0007:  stsfld bool Application::dumpCfg
	IL_000c:  ldnull 
	IL_000d:  stsfld string Application::moduleFilename
	IL_0012:  ldnull 
	IL_0013:  stsfld string Application::typeName
	IL_0018:  ldnull 
	IL_0019:  stsfld string Application::methodName
	IL_001e:  ldnull 
	IL_001f:  stsfld string Application::dumpFile
	IL_0024:  ldstr "cfgtraverse"
	IL_0029:  stsfld string Application::'algorithm'
	IL_002e:  newobj instance void class [Mono.Options]Mono.Options.OptionSet::'.ctor'()
	IL_0033:  stloc.0 
	IL_0034:  ldloc.0 
	IL_0035:  ldstr "t|type="
	IL_003a:  ldstr "The name of the type to look for methods"
	IL_003f:  ldnull 
	IL_0040:  ldftn void class Application::'<optionSet>m__0'(string)
	IL_0046:  newobj instance void class [mscorlib]System.Action`1<string>::'.ctor'(object, native int)
	IL_004b:  callvirt instance class [Mono.Options]Mono.Options.OptionSet class [Mono.Options]Mono.Options.OptionSet::Add(string, string, class [mscorlib]System.Action`1<string>)
	IL_0050:  pop 
	IL_0051:  ldloc.0 
	IL_0052:  ldstr "m|method="
	IL_0057:  ldstr "Name of method to process"
	IL_005c:  ldnull 
	IL_005d:  ldftn void class Application::'<optionSet>m__1'(string)
	IL_0063:  newobj instance void class [mscorlib]System.Action`1<string>::'.ctor'(object, native int)
	IL_0068:  callvirt instance class [Mono.Options]Mono.Options.OptionSet class [Mono.Options]Mono.Options.OptionSet::Add(string, string, class [mscorlib]System.Action`1<string>)
	IL_006d:  pop 
	IL_006e:  ldloc.0 
	IL_006f:  ldstr "o|output="
	IL_0074:  ldstr "Dump the output to the specified file, if none then dump to stdout"
	IL_0079:  ldnull 
	IL_007a:  ldftn void class Application::'<optionSet>m__2'(string)
	IL_0080:  newobj instance void class [mscorlib]System.Action`1<string>::'.ctor'(object, native int)
	IL_0085:  callvirt instance class [Mono.Options]Mono.Options.OptionSet class [Mono.Options]Mono.Options.OptionSet::Add(string, string, class [mscorlib]System.Action`1<string>)
	IL_008a:  pop 
	IL_008b:  ldloc.0 
	IL_008c:  ldstr "a|algorithm="
	IL_0091:  ldstr "Select the conversion algorithm: one of 'cfgtraverse'(default) or 'forwardpass'"
	IL_0096:  ldnull 
	IL_0097:  ldftn void class Application::'<optionSet>m__3'(string)
	IL_009d:  newobj instance void class [mscorlib]System.Action`1<string>::'.ctor'(object, native int)
	IL_00a2:  callvirt instance class [Mono.Options]Mono.Options.OptionSet class [Mono.Options]Mono.Options.OptionSet::Add(string, string, class [mscorlib]System.Action`1<string>)
	IL_00a7:  pop 
	IL_00a8:  ldloc.0 
	IL_00a9:  ldstr "dump-cfg"
	IL_00ae:  ldstr "Dump the cfg for the specified method and exit."
	IL_00b3:  ldnull 
	IL_00b4:  ldftn void class Application::'<optionSet>m__4'(string)
	IL_00ba:  newobj instance void class [mscorlib]System.Action`1<string>::'.ctor'(object, native int)
	IL_00bf:  callvirt instance class [Mono.Options]Mono.Options.OptionSet class [Mono.Options]Mono.Options.OptionSet::Add(string, string, class [mscorlib]System.Action`1<string>)
	IL_00c4:  pop 
	IL_00c5:  ldloc.0 
	IL_00c6:  ldstr "h|help"
	IL_00cb:  ldstr "show this message and exit"
	IL_00d0:  ldnull 
	IL_00d1:  ldftn void class Application::'<optionSet>m__5'(string)
	IL_00d7:  newobj instance void class [mscorlib]System.Action`1<string>::'.ctor'(object, native int)
	IL_00dc:  callvirt instance class [Mono.Options]Mono.Options.OptionSet class [Mono.Options]Mono.Options.OptionSet::Add(string, string, class [mscorlib]System.Action`1<string>)
	IL_00e1:  pop 
	IL_00e2:  ldloc.0 
	IL_00e3:  stsfld class [Mono.Options]Mono.Options.OptionSet Application::optionSet
	IL_00e8:  ret 
    } // end of method Application::.cctor

    // method line 89
    .method private static hidebysig 
           default void '<optionSet>m__0' (string v)  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x3659
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  stsfld string Application::typeName
	IL_0006:  ret 
    } // end of method Application::<optionSet>m__0

    // method line 90
    .method private static hidebysig 
           default void '<optionSet>m__1' (string v)  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x3661
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  stsfld string Application::methodName
	IL_0006:  ret 
    } // end of method Application::<optionSet>m__1

    // method line 91
    .method private static hidebysig 
           default void '<optionSet>m__2' (string v)  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x3669
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  stsfld string Application::dumpFile
	IL_0006:  ret 
    } // end of method Application::<optionSet>m__2

    // method line 92
    .method private static hidebysig 
           default void '<optionSet>m__3' (string v)  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x3671
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  stsfld string Application::'algorithm'
	IL_0006:  ret 
    } // end of method Application::<optionSet>m__3

    // method line 93
    .method private static hidebysig 
           default void '<optionSet>m__4' (string v)  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x3679
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldc.i4.1 
	IL_0001:  stsfld bool Application::dumpCfg
	IL_0006:  ret 
    } // end of method Application::<optionSet>m__4

    // method line 94
    .method private static hidebysig 
           default void '<optionSet>m__5' (string v)  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x3681
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldc.i4.1 
	IL_0001:  stsfld bool Application::showHelp
	IL_0006:  ret 
    } // end of method Application::<optionSet>m__5

  } // end of class Application

