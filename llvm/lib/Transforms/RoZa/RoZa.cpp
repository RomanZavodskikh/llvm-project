#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"

#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"

using namespace llvm;

namespace {
struct RoZa : public FunctionPass {
  static char ID;
  RoZa() : FunctionPass(ID) {}

  bool runOnFunction(Function &F) override {
    errs() << "RoZa: ";
    errs().write_escaped(F.getName()) << '\n';
    return false;
  }
}; // end of struct RoZa
}  // end of anonymous namespace

char RoZa::ID = 0;
static RegisterPass<RoZa> X("RoZa", "RoZa World Pass",
                             false /* Only looks at CFG */,
                             false /* Analysis Pass */);

static RegisterStandardPasses Y(
    PassManagerBuilder::EP_EarlyAsPossible,
    [](const PassManagerBuilder &Builder,
       legacy::PassManagerBase &PM) { PM.add(new RoZa()); });
