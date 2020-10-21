using System.Collections.Generic;
using System.Linq;
using Mono.Cecil;
using Mono.Cecil.Cil;
using NUnit.Framework;
using LinearIr.Library;

namespace LinearIr.Test
{
    public class LinearIrTest
    {
        private List<CfgTraverseLinearIr> cecilLibraryCfgLinearIrMethods;
        private List<ForwardPassLinearIr> cecilLibraryPassLinearIrMethods;

        [SetUp]
        public void Setup()
        {
            ModuleDefinition module = ModuleDefinition.ReadModule("../../../../sample-cil/Mono.Cecil.dll");
            cecilLibraryCfgLinearIrMethods = module.Types
                .SelectMany(x => x.Methods.Where(m => m.HasBody))
                .Select(x => new CfgTraverseLinearIr(x))
                .ToList();
            cecilLibraryPassLinearIrMethods = module.Types
                .SelectMany(x => x.Methods.Where(m => m.HasBody))
                .Select(x => new ForwardPassLinearIr(x))
                .ToList();
        }

        [Test]
        public void RetInstruction_Should_ReturnRegister0_InSingleForwardPass()
        {
            cecilLibraryPassLinearIrMethods
                .ForEach(x => {
                    foreach (var instruction in x.Instructions
                        .Where(i => i.CorrespondingStackBasedInstruction.OpCode == OpCodes.Ret))
                    {
                        if (instruction.InputRegisters.Any() && 
                            instruction.InputRegisters.First() != 0)
                        {
                            TestContext.WriteLine("Returning non-zero register at method: " 
                                + x.MethodDefinition.FullName);
                            Assert.Zero(instruction.InputRegisters.First());
                        }
                    }
                });
        }

        [Test]
        public void RetInstruction_Should_ReturnRegister0_InCfgTraverse()
        {
            cecilLibraryCfgLinearIrMethods
                .ForEach(x => {
                    foreach (var instruction in x.Instructions
                        .Where(i => i.CorrespondingStackBasedInstruction.OpCode == OpCodes.Ret))
                    {
                        if (instruction.InputRegisters.Any() && 
                            instruction.InputRegisters.First() != 0)
                        {
                            TestContext.WriteLine("Returning non-zero register at method: " 
                                + x.MethodDefinition.FullName);
                            Assert.Zero(instruction.InputRegisters.First());
                        }
                    }
                });
        }

        [Test]
        public void AllInstructions_Should_HavePositiveRegisterIndex_InCfgTraverse()
        {
            Assert.True(
                cecilLibraryCfgLinearIrMethods
                    .SelectMany(x => x.Instructions)
                    .All(x => x.InputRegisters.All(i => i >= 0) && 
                        x.OutputRegisters.All(i => i >= 0))
            );
        }

        [Test]
        public void AllInstructions_Should_HavePositiveRegisterIndex_InForwardPass()
        {
            Assert.True(
                cecilLibraryPassLinearIrMethods
                    .SelectMany(x => x.Instructions)
                    .All(x => x.InputRegisters.All(i => i >= 0) && 
                        x.OutputRegisters.All(i => i >= 0))
            );
        }

        [Test]
        public void Correspondence1To1_Should_ExistBetweenInstructions_InCfgTravers()
        {
            cecilLibraryCfgLinearIrMethods
                .ForEach(x =>
                    Assert.True(x.Instructions
                        .Select(i => i.CorrespondingStackBasedInstruction)
                        .SequenceEqual(x.MethodDefinition.Body.Instructions))
                );
        }
    }
}
