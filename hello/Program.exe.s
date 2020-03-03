.section ".debug_abbrev"
.subsection 0

	.byte 1,17,1,37,8,3,8,27,8,19,11,17,1,18,1,16,6,0,0,2,46,1,3,8,135,64,8,58,15,59,15,90
	.byte 8,17,1,18,1,64,10,0,0,3,5,0,3,8,73,19,2,10,0,0,15,5,0,3,8,73,19,2,6,0,0,4
	.byte 36,0,11,11,62,11,3,8,0,0,5,2,1,3,8,11,15,0,0,17,2,0,3,8,11,15,0,0,6,13,0,3
	.byte 8,73,19,56,10,0,0,7,22,0,3,8,73,19,0,0,8,4,1,3,8,11,15,73,19,0,0,9,40,0,3,8
	.byte 28,13,0,0,10,57,1,3,8,0,0,11,52,0,3,8,73,19,2,10,0,0,12,52,0,3,8,73,19,2,6,0
	.byte 0,13,15,0,73,19,0,0,14,16,0,73,19,0,0,16,28,0,73,19,56,10,0,0,18,46,0,3,8,17,1,18
	.byte 1,0,0,0
.section ".debug_info"
.subsection 0
.Ldebug_info_start:

.LDIFF_SYM0=.Ldebug_info_end - .Ldebug_info_begin
	.long .LDIFF_SYM0
.Ldebug_info_begin:

	.hword 2
	.long 0
	.byte 8,1
	.string "Mono AOT Compiler 4.2.1 (Debian 4.2.1.102+dfsg2-7ubuntu4)"
	.string "Program.exe"
	.string ""

	.byte 2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.LDIFF_SYM1=.Ldebug_line_start - .Ldebug_line_section_start
	.long .LDIFF_SYM1
.LDIE_I1:

	.byte 4,1,5
	.string "sbyte"
.LDIE_U1:

	.byte 4,1,7
	.string "byte"
.LDIE_I2:

	.byte 4,2,5
	.string "short"
.LDIE_U2:

	.byte 4,2,7
	.string "ushort"
.LDIE_I4:

	.byte 4,4,5
	.string "int"
.LDIE_U4:

	.byte 4,4,7
	.string "uint"
.LDIE_I8:

	.byte 4,8,5
	.string "long"
.LDIE_U8:

	.byte 4,8,7
	.string "ulong"
.LDIE_I:

	.byte 4,8,5
	.string "intptr"
.LDIE_U:

	.byte 4,8,7
	.string "uintptr"
.LDIE_R4:

	.byte 4,4,4
	.string "float"
.LDIE_R8:

	.byte 4,8,4
	.string "double"
.LDIE_BOOLEAN:

	.byte 4,1,2
	.string "boolean"
.LDIE_CHAR:

	.byte 4,2,8
	.string "char"
.LDIE_STRING:

	.byte 4,8,1
	.string "string"
.LDIE_OBJECT:

	.byte 4,8,1
	.string "object"
.LDIE_SZARRAY:

	.byte 4,8,1
	.string "object"
.section ".debug_loc"
.subsection 0
.Ldebug_loc_start:
.section ".debug_frame"
.subsection 0
	.balign 8

.LDIFF_SYM2=.Lcie0_end - .Lcie0_start
	.long .LDIFF_SYM2
.Lcie0_start:

	.long -1
	.byte 3
	.string ""

	.byte 1,120,16,12,7,8,144,1
	.balign 8
.Lcie0_end:
.text 0
	.balign 8
jit_code_start:

	.byte 144,144,144,144,144,144,144,144,144,144,144,144,144,144,144,144
.text 0
	.balign 16
.Lm_0:
	.local hello_MainClass__ctor
	.type hello_MainClass__ctor,@function
hello_MainClass__ctor:

	.byte 72,131,236,8,72,131,196,8,195

	.size hello_MainClass__ctor,.-hello_MainClass__ctor
.Lme_0:
.text 0
	.balign 16
.Lm_1:
	.local hello_MainClass_Main_string__
	.type hello_MainClass_Main_string__,@function
hello_MainClass_Main_string__:

	.byte 72,131,236,8,184,3,0,0,0,72,131,224,1,131,248,1,64,15,148,199,72,15,182,255
call .Lp_1

	.byte 72,131,196,8,195

	.size hello_MainClass_Main_string__,.-hello_MainClass_Main_string__
.Lme_1:
.text 0
	.balign 16
.Lm_2:
	.local hello_MainClass_IsOdd_int
	.type hello_MainClass_IsOdd_int,@function
hello_MainClass_IsOdd_int:

	.byte 72,131,236,8,72,137,60,36,72,139,199,72,139,200,193,233,31,3,193,72,131,224,1,43,193,131,248,1,64,15,148,192
	.byte 72,15,182,192,72,131,196,8,195

	.size hello_MainClass_IsOdd_int,.-hello_MainClass_IsOdd_int
.Lme_2:
.text 0
	.balign 8
jit_code_end:

	.byte 144,144,144,144
.text 1
	.balign 8
method_addresses:
	.local method_addresses
	.type method_addresses,@function
call .Lm_0
call .Lm_1
call .Lm_2
call method_addresses
method_addresses_end:

.section ".rodata"
.subsection 0
	.balign 8
unbox_trampolines:
unbox_trampolines_end:

	.long 0
.text 0
	.balign 8
unbox_trampoline_addresses:

	.long 0
.section ".rodata"
.subsection 1
	.balign 8
method_info_offsets:

	.byte 4,0,0,0,10,0,0,0,1,0,0,0,2,0,0,0,0,0,1,2,2,255,255,255,255,251
.section ".rodata"
.subsection 0
	.balign 8
extra_method_table:

	.byte 11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0
.section ".rodata"
.subsection 0
	.balign 8
extra_method_info_offsets:

	.byte 0,0,0,0
.section ".rodata"
.subsection 0
	.balign 8
class_name_table:

	.byte 11,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0
.section ".rodata"
.subsection 1
	.balign 8
got_info_offsets:

	.byte 5,0,0,0,10,0,0,0,1,0,0,0,2,0,0,0,0,0,7,2,1,1,1
.section ".rodata"
.subsection 1
	.balign 8
ex_info_offsets:

	.byte 4,0,0,0,10,0,0,0,1,0,0,0,2,0,0,0,0,0,18,7,7,255,255,255,255,224
.section ".rodata"
.subsection 1
	.balign 8
unwind_info:

	.byte 16,12,7,8,144,1,68,14,16,28,10,68,12,7,8,65,11
.section ".rodata"
.subsection 1
	.balign 8
class_info_offsets:

	.byte 2,0,0,0,10,0,0,0,1,0,0,0,2,0,0,0,0,0,39,7

.text 0
	.balign 16
plt:
mono_aot_Program_plt:
	.local plt_System_Console_WriteLine_bool
	.type plt_System_Console_WriteLine_bool,@function
plt_System_Console_WriteLine_bool:
.Lp_1:
jmp *mono_aot_Program_got+48(%rip)

	.long 13
	.size plt_System_Console_WriteLine_bool,.-plt_System_Console_WriteLine_bool
	.size mono_aot_Program_plt,.-mono_aot_Program_plt
plt_end:
.section ".rodata"
.subsection 1
	.balign 8
image_table:

	.byte 2,0,0,0,80,114,111,103,114,97,109,0,54,56,67,53,56,55,70,70,45,48,51,65,70,45,52,54,66,55,45,56
	.byte 65,68,53,45,66,48,48,48,54,70,49,49,69,52,65,68,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,109,115,99,111,114,108,105,98,0,48,65,57,57,50,68,51,57,45,70,55
	.byte 65,53,45,52,69,66,52,45,57,51,70,57,45,67,53,48,54,66,68,48,51,51,52,66,55,0,0,98,55,55,97,53
	.byte 99,53,54,49,57,51,52,101,48,56,57,0,0,0,0,0,1,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0
.bss 0
	.balign 8
	.local mono_aot_Program_got
	.type mono_aot_Program_got,@object
mono_aot_Program_got:
	.skip 56
got_end:
.section ".rodata"
.subsection 1
runtime_version:
	.string ""
.section ".rodata"
.subsection 1
assembly_guid:
	.string "68C587FF-03AF-46B7-8AD5-B0006F11E4AD"
.section ".rodata"
.subsection 1
assembly_name:
	.string "Program"
.data 0
	.balign 8
mono_aot_file_info:
	.globl mono_aot_file_info
	.type mono_aot_file_info,@object

	.long 119,0
	.balign 8
	.quad mono_aot_Program_got
	.balign 8
	.quad 0
	.balign 8
	.quad 0
	.balign 8
	.quad jit_code_start
	.balign 8
	.quad jit_code_end
	.balign 8
	.quad method_addresses
	.balign 8
	.quad blob
	.balign 8
	.quad class_name_table
	.balign 8
	.quad class_info_offsets
	.balign 8
	.quad method_info_offsets
	.balign 8
	.quad ex_info_offsets
	.balign 8
	.quad extra_method_info_offsets
	.balign 8
	.quad extra_method_table
	.balign 8
	.quad got_info_offsets
	.balign 8
	.quad 0
	.balign 8
	.quad mem_end
	.balign 8
	.quad image_table
	.balign 8
	.quad assembly_guid
	.balign 8
	.quad runtime_version
	.balign 8
	.quad 0
	.balign 8
	.quad 0
	.balign 8
	.quad 0
	.balign 8
	.quad 0
	.balign 8
	.quad 0
	.balign 8
	.quad assembly_name
	.balign 8
	.quad plt
	.balign 8
	.quad plt_end
	.balign 8
	.quad unwind_info
	.balign 8
	.quad unbox_trampolines
	.balign 8
	.quad unbox_trampolines_end
	.balign 8
	.quad unbox_trampoline_addresses

	.long 5,56,2,4,0,370239999,63,69
	.long 128,8,8,15,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0
.section ".rodata"
.subsection 1
	.balign 8
blob:

	.byte 0,0,0,0,0,0,0,12,0,39,42,52,47,3,193,0,86,173,128,130,0,9,0,5,0,128,130,0,34,0,5,0
	.byte 128,130,0,41,0,5,0,0,128,144,16,0,0,1,4,128,144,16,0,0,1,193,0,89,41,193,0,89,38,193,0,89
	.byte 37,193,0,89,35,115,103,101,110,0
.section ".debug_info"
.subsection 0
.LTDIE_1:

	.byte 17
	.string "System_Object"

	.byte 16,7
	.string "System_Object"

.LDIFF_SYM3=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM3
.LTDIE_1_POINTER:

	.byte 13
.LDIFF_SYM4=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM4
.LTDIE_1_REFERENCE:

	.byte 14
.LDIFF_SYM5=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM5
.LTDIE_0:

	.byte 5
	.string "hello_MainClass"

	.byte 16,16
.LDIFF_SYM6=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM6
	.byte 2,35,0,0,7
	.string "hello_MainClass"

.LDIFF_SYM7=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM7
.LTDIE_0_POINTER:

	.byte 13
.LDIFF_SYM8=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM8
.LTDIE_0_REFERENCE:

	.byte 14
.LDIFF_SYM9=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM9
	.byte 2
	.string "hello.MainClass:.ctor"
	.string "hello_MainClass__ctor"

	.byte 0,0
	.string "hello.MainClass:.ctor"
	.quad .Lm_0
	.quad .Lme_0

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM10=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM10
	.byte 0,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM11=.Lfde0_end - .Lfde0_start
	.long .LDIFF_SYM11
.Lfde0_start:

	.long 0
	.balign 8
	.quad .Lm_0

.LDIFF_SYM12=.Lme_0 - .Lm_0
	.long .LDIFF_SYM12
	.long 0
	.byte 68,14,16,28,10,68,12,7,8,65,11
	.balign 8
.Lfde0_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "hello.MainClass:Main"
	.string "hello_MainClass_Main_string__"

	.byte 0,0
	.string "hello.MainClass:Main"
	.quad .Lm_1
	.quad .Lme_1

	.byte 2,118,16,3
	.string "args"

.LDIFF_SYM13=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM13
	.byte 0,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM14=.Lfde1_end - .Lfde1_start
	.long .LDIFF_SYM14
.Lfde1_start:

	.long 0
	.balign 8
	.quad .Lm_1

.LDIFF_SYM15=.Lme_1 - .Lm_1
	.long .LDIFF_SYM15
	.long 0
	.byte 68,14,16,28,10,68,12,7,8,65,11
	.balign 8
.Lfde1_end:

.section ".debug_info"
.subsection 0
.LTDIE_3:

	.byte 5
	.string "System_ValueType"

	.byte 16,16
.LDIFF_SYM16=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM16
	.byte 2,35,0,0,7
	.string "System_ValueType"

.LDIFF_SYM17=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM17
.LTDIE_3_POINTER:

	.byte 13
.LDIFF_SYM18=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM18
.LTDIE_3_REFERENCE:

	.byte 14
.LDIFF_SYM19=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM19
.LTDIE_2:

	.byte 5
	.string "System_Int32"

	.byte 20,16
.LDIFF_SYM20=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM20
	.byte 2,35,0,6
	.string "m_value"

.LDIFF_SYM21=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM21
	.byte 2,35,16,0,7
	.string "System_Int32"

.LDIFF_SYM22=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM22
.LTDIE_2_POINTER:

	.byte 13
.LDIFF_SYM23=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM23
.LTDIE_2_REFERENCE:

	.byte 14
.LDIFF_SYM24=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM24
	.byte 2
	.string "hello.MainClass:IsOdd"
	.string "hello_MainClass_IsOdd_int"

	.byte 0,0
	.string "hello.MainClass:IsOdd"
	.quad .Lm_2
	.quad .Lme_2

	.byte 2,118,16,3
	.string "x"

.LDIFF_SYM25=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM25
	.byte 2,119,0,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM26=.Lfde2_end - .Lfde2_start
	.long .LDIFF_SYM26
.Lfde2_start:

	.long 0
	.balign 8
	.quad .Lm_2

.LDIFF_SYM27=.Lme_2 - .Lm_2
	.long .LDIFF_SYM27
	.long 0
	.byte 68,14,16,28,10,68,12,7,8,65,11
	.balign 8
.Lfde2_end:

.section ".debug_info"
.subsection 0

	.byte 0
.Ldebug_info_end:
.section ".debug_line"
.subsection 0
.Ldebug_line_section_start:
.Ldebug_line_start:

	.long .Ldebug_line_end - . -4
	.hword 2
	.long .Ldebug_line_header_end - . -4
	.byte 1,1,251,14,13,0,1,1,1,1,0,0,0,1,0,0,1
.section ".debug_line"
.subsection 0

	.byte 0
	.string "<unknown>"

	.byte 0,0,0,0
.Ldebug_line_header_end:

	.byte 0,1,1
.Ldebug_line_end:
.text 1
	.balign 8
mem_end:

.section	.note.GNU-stack,"",@progbits
