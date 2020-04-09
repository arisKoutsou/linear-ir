BUILD_DIR = .
ROOT_DIR = ..

CLASSES = $(ROOT_DIR)/linear-ir/LinearIr.cs  \
	$(ROOT_DIR)/linear-ir/LinearIrInstruction.cs  \
	$(ROOT_DIR)/extensions/InstructionExtensions.cs  \
	$(ROOT_DIR)/cil-cfg/CilControlFlowGraph.cs  \
	$(ROOT_DIR)/cil-cfg/CilBasicBlock.cs  \
	$(ROOT_DIR)/ir-dump/IrPrintingPolicy.cs  \
	$(ROOT_DIR)/linear-ir/CfgTraverseLinearIr.cs  \
	$(ROOT_DIR)/linear-ir/SingleForwardPassLinearIr.cs  \
	

CC = @mcs

FLAGS = -langversion:4 -r:$(BUILD_DIR)/Mono.Cecil.dll

LinearIrDump: $(CLASSES) $(ROOT_DIR)/ir-dump/LinearIrDump.cs
	$(CC) $(FLAGS) $(CLASSES) $(ROOT_DIR)/ir-dump/LinearIrDump.cs -out:$(BUILD_DIR)/LinearIrDump.exe

LinearIrTest: $(CLASSES) $(ROOT_DIR)/linear-ir/LinearIrTest.cs
	$(CC) $(FLAGS) $(CLASSES) $(ROOT_DIR)/linear-ir/LinearIrTest.cs -out:$(BUILD_DIR)/LinearIrTest.exe

ControlFlowGraphDump: $(CLASSES) $(ROOT_DIR)/ir-dump/ControlFlowGraphDump.cs
	$(CC) $(FLAGS) $(CLASSES) $(ROOT_DIR)/ir-dump/ControlFlowGraphDump.cs -out:$(BUILD_DIR)/ControlFlowGraphDump.exe

InstructionInfoDump: $(ROOT_DIR)/extensions/InstructionInfoDumpTest.cs
	$(CC) $(FLAGS) $(ROOT_DIR)/extensions/InstructionInfoDumpTest.cs -out:$(BUILD_DIR)/InstructionInfoDump.exe

dependancies:
	nuget install Mono.Cecil
	cp Mono.Cecil.0.11.2/lib/net40/Mono.Cecil.dll $(BUILD_DIR)

all: LinearIrDump LinearIrTest ControlFlowGraphDump InstructionInfoDump

.PHONY: clean

clean:
	rm -rf $(BUILD_DIR)/*.exe