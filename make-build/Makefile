BUILD_DIR = .
ROOT_DIR = ..

CLASSES = $(ROOT_DIR)/linear-ir/LinearIr.cs  \
	$(ROOT_DIR)/linear-ir/LinearIrInstruction.cs  \
	$(ROOT_DIR)/extensions/InstructionExtensions.cs  \
	$(ROOT_DIR)/cil-cfg/CilControlFlowGraph.cs  \
	$(ROOT_DIR)/cil-cfg/CilBasicBlock.cs  \
	$(ROOT_DIR)/ir-dump/IrPrintingPolicy.cs  \
	$(ROOT_DIR)/ir-dump/LinearIrDump.cs  \
	$(ROOT_DIR)/linear-ir/CfgTraverseLinearIr.cs  \
	$(ROOT_DIR)/linear-ir/SingleForwardPassLinearIr.cs  \
	

CC = @mcs

FLAGS = -langversion:6 -r:$(BUILD_DIR)/Mono.Cecil.dll -r:$(BUILD_DIR)/Mono.Options.dll

LinearIr: $(CLASSES) $(ROOT_DIR)/app/Application.cs
	$(CC) $(FLAGS) $(CLASSES) $(ROOT_DIR)/app/Application.cs -out:$(BUILD_DIR)/LinearIr.exe

ControlFlowGraphDump: $(CLASSES) $(ROOT_DIR)/ir-dump/ControlFlowGraphDump.cs
	$(CC) $(FLAGS) $(CLASSES) $(ROOT_DIR)/ir-dump/ControlFlowGraphDump.cs -out:$(BUILD_DIR)/ControlFlowGraphDump.exe

InstructionInfoDump: $(ROOT_DIR)/extensions/InstructionInfoDumpTest.cs
	$(CC) $(FLAGS) $(ROOT_DIR)/extensions/InstructionInfoDumpTest.cs -out:$(BUILD_DIR)/InstructionInfoDump.exe

dependencies:
	nuget install Mono.Cecil
	cp Mono.Cecil*/lib/net40/Mono.Cecil.dll $(BUILD_DIR)
	nuget install Mono.Options
	cp Mono.Options*/lib/net40/Mono.Options.dll $(BUILD_DIR)
	
all: LinearIr LinearIrTest ControlFlowGraphDump InstructionInfoDump

.PHONY: clean superclean

clean:
	rm -rf $(BUILD_DIR)/*.exe

superclean:
	rm -rf $(BUILD_DIR)/*.exe Mono.*