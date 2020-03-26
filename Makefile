CLASSES = linear-ir/LinearIr.cs  \
	linear-ir/LinearIrInstruction.cs  \
	extensions/InstructionExtensions.cs  \
	cil-cfg/CilControlFlowGraph.cs  \
	cil-cfg/CilBasicBlock.cs  \

FLAGS = -langversion:4 -r:Mono.Cecil.0.11.2/lib/net40/Mono.Cecil.dll

LinearIrTest: $(CLASSES)
	mcs $(FLAGS) $(CLASSES) linear-ir/LinearIrTest.cs -out:LinearIrTest.exe

ControlFlowGraphTest: $(CLASSES)
	mcs $(FLAGS) $(CLASSES) cil-cfg/ControlFlowGraphTest.cs -out:ControlFlowGraphTest.exe

InstructionInfoDump: cil-cfg/InstructionInfoDumpTest.cs
	mcs $(FLAGS) cil-cfg/InstructionInfoDumpTest.cs -out:InstructionInfoDump.exe

cecil:
	nuget install Mono.Cecil
