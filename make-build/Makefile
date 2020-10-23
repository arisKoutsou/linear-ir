BUILD_DIR = .
ROOT_DIR = ..
TEST_DIR = $(ROOT_DIR)/LinearIr.Test
LIB_DIR = $(ROOT_DIR)/LinearIr.Library
APP_DIR = $(ROOT_DIR)/LinearIr.Application

CLASSES = $(LIB_DIR)/linear-ir/AbstractLinearIr.cs  \
	$(LIB_DIR)/linear-ir/LinearIrInstruction.cs  \
	$(LIB_DIR)/extensions/InstructionExtensions.cs  \
	$(LIB_DIR)/cil-cfg/CilControlFlowGraph.cs  \
	$(LIB_DIR)/cil-cfg/CilBasicBlock.cs  \
	$(LIB_DIR)/ir-dump/IrPrintingPolicy.cs  \
	$(LIB_DIR)/ir-dump/LinearIrDump.cs  \
	$(LIB_DIR)/linear-ir/CfgTraverseLinearIr.cs  \
	$(LIB_DIR)/linear-ir/ForwardPassLinearIr.cs  \

DOXYGEN_CONFIG = $(ROOT_DIR)/doxygen.config

CC = @mcs
RUNTIME = @mono

FLAGS = -langversion:6 -r:$(BUILD_DIR)/Mono.Cecil.dll -r:$(BUILD_DIR)/Mono.Options.dll

linear-ir: $(CLASSES) $(APP_DIR)/Application.cs
	$(CC) $(FLAGS) $(CLASSES) $(APP_DIR)/Application.cs -out:$(BUILD_DIR)/LinearIr.exe

lib: $(CLASSES)
	$(CC) $(FLAGS) $(CLASSES) -target:library -out:$(BUILD_DIR)/LinearIr.dll

ControlFlowGraphDump: $(CLASSES) $(ROOT_DIR)/ir-dump/ControlFlowGraphDump.cs
	$(CC) $(FLAGS) $(CLASSES) $(ROOT_DIR)/ir-dump/ControlFlowGraphDump.cs -out:$(BUILD_DIR)/ControlFlowGraphDump.exe

InstructionInfoDump: $(ROOT_DIR)/extensions/InstructionInfoDumpTest.cs
	$(CC) $(FLAGS) $(ROOT_DIR)/extensions/InstructionInfoDumpTest.cs -out:$(BUILD_DIR)/InstructionInfoDump.exe

doc:
	echo "Entering project root directory..."
	cd $(ROOT_DIR);
	echo "Generating documentation..."
	doxygen $(DOXYGEN_CONFIG)

dependencies:
	nuget install Mono.Cecil
	cp Mono.Cecil*/lib/net40/Mono.Cecil.dll $(BUILD_DIR)
	nuget install Mono.Options
	cp Mono.Options*/lib/net40/Mono.Options.dll $(BUILD_DIR)

test-dependencies:
	nuget install NUnit
	cp NUnit.3.12.0/lib/net45/nunit.framework.dll $(BUILD_DIR)
	nuget install NUnit.ConsoleRunner

test-compile:
	$(CC) $(FLAGS) $(CLASSES) $(TEST_DIR)/CilControlFlowGraphTest.cs \
		$(TEST_DIR)/LinearIrTest.cs \
		-target:library -r:nunit.framework.dll -out:Test.dll

test-run: test-compile
	$(RUNTIME) NUnit.ConsoleRunner.3.11.1/tools/nunit3-console.exe Test.dll -noresult
	
all: LinearIr LinearIrTest ControlFlowGraphDump InstructionInfoDump

.PHONY: clean superclean

clean:
	rm -rf $(BUILD_DIR)/*.exe

superclean:
	rm -rf $(BUILD_DIR)/*.exe $(BUILD_DIR)/Mono.* $(BUILD_DIR)/NUnit.* $(BUILD_DIR)/*.dll