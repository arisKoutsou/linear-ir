using System.Linq;
using NUnit.Framework;
using LinearIr;

namespace LinearIr.Test
{
    public class CilControlFlowGraphTest
    {
        [SetUp]
        public void Setup()
        {
            
        }

        [Test]
        public void WhileLoop_Should_Have4BasicBlocks()
        {
            var cfg = new CilControlFlowGraph(
                module: "sample-cil/common_constructs.exe",
                type: "common_constructs", 
                method: "WhileLoop");
            // A simple while loop has 4 basic blocks.
            Assert.AreEqual(cfg.BasicBlocks.Count, 4);
        }

        [Test]
        public void Ternary_Should_HaveSpecificCfg()
        {
            var cfg = new CilControlFlowGraph(
                module: "sample-cil/common_constructs.exe",
                type: "common_constructs", 
                method: "Ternary");
            // Ternary has a specific cfg.
            Assert.AreEqual(cfg.BasicBlocks.Count, 4);
            Assert.AreEqual(cfg.EntryBasicBlock.OutBasicBlocks.First(), 
                            cfg.BasicBlocks[1]);
            Assert.AreEqual(cfg.EntryBasicBlock.OutBasicBlocks.Last(), 
                            cfg.BasicBlocks[2]);
            Assert.AreEqual(cfg.BasicBlocks[1].OutBasicBlocks.First(), 
                            cfg.BasicBlocks[2].OutBasicBlocks.First());
            Assert.AreEqual(cfg.BasicBlocks[1].OutBasicBlocks.First(), 
                            cfg.ExitBasicBlocks.First());
        }
    }
}
