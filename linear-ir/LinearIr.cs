using System;
using System.Collections.Generic;
using Mono.Cecil.Cil;
using System.Linq;
using Mono.Cecil;
using System.Diagnostics;
using System.Text;

public class LinearIr {
    private CilControlFlowGraph cilControlFlowGraph;
    private Stack<String> evaluationStack;

    private int methodRegisterCounter;

    private StringBuilder sb;

    public LinearIr(CilControlFlowGraph cfg) {
        cilControlFlowGraph = cfg;
        evaluationStack = new Stack<String>();
        methodRegisterCounter = 0;
        sb = new StringBuilder();
    }

    private String newRegister() {
        return "v" + (methodRegisterCounter++).ToString();
    }

    /// <summary>
    ///     Returns the input(read) registers as they will apear
    ///     in the linear ir. This is done by popping from the evaluation
    ///     stack as many elements as the cil instruction's "StackBehaviour"
    ///     indicates. For each one of these elements a new register is created.
    /// </summary>
    /// <param name="i"> The cil instruction </param>
    /// <returns> A list of strings indicating the new registers </returns>
    private List<String> GetInstructionInputRegisters(Instruction i) {
        List<String> inputRegisters = new List<String>();
        switch (i.OpCode.StackBehaviourPop) {
            case StackBehaviour.Pop0:
                // Do nothing.
                break;
            case StackBehaviour.Pop1:
            case StackBehaviour.Popi:
            case StackBehaviour.Popref:
                inputRegisters.Insert(0, evaluationStack.Pop());
                break;
            case StackBehaviour.Pop1_pop1:
            case StackBehaviour.Popi_pop1:
            case StackBehaviour.Popi_popi:
            case StackBehaviour.Popref_pop1:
            case StackBehaviour.Popi_popr4:
            case StackBehaviour.Popi_popr8:
            case StackBehaviour.Popi_popi8:
            case StackBehaviour.Popref_popi:
                inputRegisters.Insert(0, evaluationStack.Pop());
                inputRegisters.Insert(0, evaluationStack.Pop());
                break;

            case StackBehaviour.Popi_popi_popi:
            case StackBehaviour.Popref_popi_popi:
            case StackBehaviour.Popref_popi_popi8:
            case StackBehaviour.Popref_popi_popr4:
            case StackBehaviour.Popref_popi_popr8:
            case StackBehaviour.Popref_popi_popref:
                inputRegisters.Insert(0, evaluationStack.Pop());
                inputRegisters.Insert(0, evaluationStack.Pop());
                inputRegisters.Insert(0, evaluationStack.Pop());
                break;
            case StackBehaviour.PopAll:
                throw new NotImplementedException(); // TODO
                // break;
            case StackBehaviour.Varpop:
                if (i.OpCode == OpCodes.Call 
                    || i.OpCode == OpCodes.Calli
                    || i.OpCode == OpCodes.Callvirt
                    || i.OpCode == OpCodes.Newobj) {
                    var methodToCall = i.Operand as MethodReference;
                    foreach (var arg in methodToCall.Parameters) {
                        inputRegisters.Insert(0, evaluationStack.Pop());
                    }
                } else if (i.OpCode == OpCodes.Ret) {
                    // TODO. Make sure it can't return more than 1. 
                    if (cilControlFlowGraph.Method.ReturnType.FullName != "System.Void") {
                        inputRegisters.Insert(0, evaluationStack.Pop());
                    }
                } else {
                    throw new InvalidOperationException("Bad VarPop case");
                }
                break;
            default:
                throw new InvalidOperationException("Invalid Stack Behaviour");
                // break;
        }
        return inputRegisters;
    }

    /// <summary>
    ///     Returns the output(write) registers as they will apear
    ///     in the linear ir. This is done by pushing to the evaluation
    ///     stack as many elements as the cil instruction's "StackBehaviour"
    ///     indicates. For each one of these elements a new register is created.
    /// </summary>
    /// <param name="i"> The cil instruction </param>
    /// <returns> A list of strings indicating the new registers </returns>
    private List<String> GetInstructionOutputRegisters(Instruction i) {
        List<String> outputRegisters = new List<String>(3);
        String reg;
        switch (i.OpCode.StackBehaviourPush) {
            case StackBehaviour.Push0:
                // Do nothing.
                break;
            case StackBehaviour.Push1:
            case StackBehaviour.Pushi:
            case StackBehaviour.Pushi8:
            case StackBehaviour.Pushr4:
            case StackBehaviour.Pushr8:
            case StackBehaviour.Pushref:
                reg = newRegister();
                evaluationStack.Push(reg);
                outputRegisters.Add(reg);
                break;
            case StackBehaviour.Push1_push1:
                reg = newRegister();
                evaluationStack.Push(reg);
                outputRegisters.Add(reg);
                reg = newRegister();
                evaluationStack.Push(reg);
                outputRegisters.Add(reg);
                break;
            case StackBehaviour.Varpush:
                // TODO
                // Instruction that have this behaviour: callvirt calli call
                // This is dealt simmilarly to the ret instruction of the current method.
                Debug.Assert(i.OpCode == OpCodes.Call
                    || i.OpCode == OpCodes.Calli
                    || i.OpCode == OpCodes.Callvirt);
                var methodToCall = i.Operand as MethodReference;
                if (methodToCall.ReturnType.FullName != "System.Void") {
                    reg = newRegister();
                    evaluationStack.Push(reg);
                    outputRegisters.Add(reg);
                }
                break;
            default:
                throw new InvalidOperationException("Invalid Stack Behaviour");
        }
        return outputRegisters;
    }

    /// <summary>
    ///     Get's the linear ir instruction corresponding to the stack based cil
    ///     instruction. The state of the stack is changed according to the 
    ///     behaviour of the instruction.
    /// </summary>
    /// <param name="i"> A cil instruction </param>
    /// <returns> A linear ir instruction </returns>
    private LinearIrInstruction evaluate(Instruction i) {
        var inputRegisters = GetInstructionInputRegisters(i);
        var outputRegisters = GetInstructionOutputRegisters(i);
        return new LinearIrInstruction(i.OpCode.Name, outputRegisters, inputRegisters);
    }

    /// <summary>
    ///     Appends the evaluated linear ir code to a string builder.
    /// </summary>
    /// <param name="basicBlock"> A basic block of the cfg </param>
    private void evaluate(CilBasicBlock basicBlock) {
        sb.AppendLine(basicBlock.Label + ":");

        foreach (var instruction in basicBlock.Instructions) {
            var linearIrInstruction = evaluate(instruction);
            sb.Append("\t" + linearIrInstruction);
            if (instruction.IsControlFlowInstruction() 
                && !instruction.IsReturnInstruction()) {
                var targetBasicBlocks = basicBlock.OutBasicBlocks
                        .Where(x => x != basicBlock.NextBasicBlock)
                        .Select(x => x.Label);
                sb.Append(
                    (targetBasicBlocks.Count() > 1 ? " | targets: " : " | target: ")
                     + String.Join(" ", targetBasicBlocks));
            }
            sb.AppendLine();
        }
    }

    /// <summary>
    ///     Performs a DFS traversal of the CFG in order to simulate a
    ///     valid execution path. This way the stack state is always valid
    ///     and the generated linear ir is valid too.
    /// </summary>
    /// <returns> A string with the linear ir corresponding to the current method </returns>
    public String evaluate() {
        var stack = new Stack<CilBasicBlock>();
        var visited = new HashSet<CilBasicBlock>();
        stack.Push(cilControlFlowGraph.EntryBasicBlock);

        while (stack.Count > 0) {
            var basicBlock = stack.Pop();
            if (!visited.Contains(basicBlock)) {
                evaluate(basicBlock);
                visited.Add(basicBlock);
                basicBlock.OutBasicBlocks.ForEach(x => stack.Push(x));
            }
        }

        return sb.ToString();
    }
}