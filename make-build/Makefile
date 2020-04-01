BUILD_DIR = .
ROOT_DIR = ..

CLASSES = $(ROOT_DIR)/linear-ir/LinearIr.cs  \
	$(ROOT_DIR)/linear-ir/LinearIrInstruction.cs  \
	$(ROOT_DIR)/extensions/InstructionExtensions.cs  \
	$(ROOT_DIR)/cil-cfg/CilControlFlowGraph.cs  \
	$(ROOT_DIR)/cil-cfg/CilBasicBlock.cs  \

CC = @mcs

FLAGS = -langversion:4 -r:$(BUILD_DIR)/Mono.Cecil.dll

CilConverter: $(CLASSES) $(ROOT_DIR)/convert/CilConverter.cs
	$(CC) $(FLAGS) $(CLASSES) $(ROOT_DIR)/convert/CilConverter.cs -out:$(BUILD_DIR)/CilConverter.exe

LinearIrTest: $(CLASSES) $(ROOT_DIR)/linear-ir/LinearIrTest.cs
	$(CC) $(FLAGS) $(CLASSES) $(ROOT_DIR)/linear-ir/LinearIrTest.cs -out:$(BUILD_DIR)/LinearIrTest.exe

ControlFlowGraphTest: $(CLASSES) $(ROOT_DIR)/cil-cfg/ControlFlowGraphTest.cs
	$(CC) $(FLAGS) $(CLASSES) $(ROOT_DIR)/cil-cfg/ControlFlowGraphTest.cs -out:$(BUILD_DIR)/ControlFlowGraphTest.exe

InstructionInfoDump: $(ROOT_DIR)/extensions/InstructionInfoDumpTest.cs
	$(CC) $(FLAGS) $(ROOT_DIR)/extensions/InstructionInfoDumpTest.cs -out:$(BUILD_DIR)/InstructionInfoDump.exe

cecil:
	nuget install Mono.Cecil
	cp Mono.Cecil.0.11.2/lib/net40/Mono.Cecil.dll $(BUILD_DIR)

all: cecil CilConverter LinearIrTest ControlFlowGraphTest InstructionInfoDump

.PHONY: clean

clean:
	rm -rf $(BUILD_DIR)/*.exe