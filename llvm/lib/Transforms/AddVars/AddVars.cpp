#include "llvm/IR/Function.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/Pass.h"
#include "llvm/Support/Casting.h"
#include "llvm/Support/raw_ostream.h"
#include <llvm/IR/NoFolder.h>
using namespace llvm;

namespace {
  struct AddVar : public FunctionPass {
    static char ID; // Pass identification, replacement for typeid
    AddVar() : FunctionPass(ID) {}

    bool runOnFunction(Function &F) override {

      APInt CashLen1(64, 8);
      APInt CashLen2(64, 64);
      APInt CashLen3(64, 512);
      APInt CashLen4(64, 4096);
      APInt CashLen5(64, 16384);
      APInt CashLen6(64, 65536);
      APInt CashLen7(64, 524288);
      APInt CashLen8(64, 524288);
      APInt PrevIdx(64, 0);
      const std::string VarName = "prob";
      StringRef PredArr;

      for(inst_iterator Inst = inst_begin(F), E = inst_end(F); Inst != E; ++Inst) {

        if(auto* Load = dyn_cast<LoadInst>(&*Inst)) {

          if(auto *GEP = dyn_cast<GEPOperator>(Load->getPointerOperand())) {

            if(GEP->getNumOperands() != 3) {
              errs() << "GEP has " << GEP->getNumOperands() << " operands, less than expected (3)\n";
              continue;
            }

            auto ArrName = GEP->getOperand(0)->getName();


            if(auto *IdxOp = dyn_cast<ConstantInt>(GEP->getOperand(2))) {

              APInt Idx = IdxOp->getValue();
              IRBuilder<NoFolder> Builder(&*Inst);

              auto *Val0 = ConstantInt::get(Builder.getInt64Ty(), 0);
              auto *Val1 = ConstantInt::get(Builder.getInt64Ty(), 1);
              auto *Val2 = ConstantInt::get(Builder.getInt64Ty(), 2);
              auto *Val3 = ConstantInt::get(Builder.getInt64Ty(), 3);
              auto *Val4 = ConstantInt::get(Builder.getInt64Ty(), 4);
              auto *Val5 = ConstantInt::get(Builder.getInt64Ty(), 5);
              auto *Val6 = ConstantInt::get(Builder.getInt64Ty(), 6);
              auto *Val7 = ConstantInt::get(Builder.getInt64Ty(), 7);
              auto *Val8 = ConstantInt::get(Builder.getInt64Ty(), 8);
              bool changeIdx = false;
              bool cmdPlanted = false;


              if(PredArr.empty() || PredArr != GEP->getOperand(0)->getName() ||
              Idx.ult(PrevIdx) || Idx.uge(PrevIdx + CashLen1)) {
                changeIdx = true;
              } else {
                cmdPlanted = true;
                Builder.CreateAdd(Val0, Val1, VarName);
              }

              if(PredArr.empty() || PredArr != GEP->getOperand(0)->getName() ||
              Idx.ult(PrevIdx) || Idx.uge(PrevIdx + CashLen2)) {
                changeIdx = true;
              } else {
                if (!cmdPlanted)
                  Builder.CreateAdd(Val0, Val2, VarName);
                cmdPlanted = true;
              }

              if(PredArr.empty() || PredArr != GEP->getOperand(0)->getName() ||
              Idx.ult(PrevIdx) || Idx.uge(PrevIdx + CashLen3)) {
                changeIdx = true;
              } else {
                if (!cmdPlanted)
                  Builder.CreateAdd(Val0, Val3, VarName);
                cmdPlanted = true;
              }

              if(PredArr.empty() || PredArr != GEP->getOperand(0)->getName() ||
              Idx.ult(PrevIdx) || Idx.uge(PrevIdx + CashLen4)) {
                changeIdx = true;
              } else {
                if (!cmdPlanted)
                  Builder.CreateAdd(Val0, Val4, VarName);
                cmdPlanted = true;
              }

              if(PredArr.empty() || PredArr != GEP->getOperand(0)->getName() ||
              Idx.ult(PrevIdx) || Idx.uge(PrevIdx + CashLen5)) {
                changeIdx = true;
              } else {
                if (!cmdPlanted)
                  Builder.CreateAdd(Val0, Val5, VarName);
                cmdPlanted = true;
              }

              if(PredArr.empty() || PredArr != GEP->getOperand(0)->getName() ||
              Idx.ult(PrevIdx) || Idx.uge(PrevIdx + CashLen6)) {
                changeIdx = true;
              } else {
                if (!cmdPlanted)
                  Builder.CreateAdd(Val0, Val6, VarName);
                cmdPlanted = true;
              }

              if(PredArr.empty() || PredArr != GEP->getOperand(0)->getName() ||
              Idx.ult(PrevIdx) || Idx.uge(PrevIdx + CashLen7)) {
                changeIdx = true;
              } else {
                if (!cmdPlanted)
                  Builder.CreateAdd(Val0, Val7, VarName);
                cmdPlanted = true;
              }

              if(PredArr.empty() || PredArr != GEP->getOperand(0)->getName() ||
              Idx.ult(PrevIdx) || Idx.uge(PrevIdx + CashLen8)) {
                changeIdx = true;
              } else {
                if (!cmdPlanted)
                  Builder.CreateAdd(Val0, Val8, VarName);
                cmdPlanted = true;
              }

              if (!cmdPlanted) {
                Builder.CreateAdd(Val0, Val0, VarName);
              }

              if (changeIdx) {
                PrevIdx = Idx;
                PredArr = GEP->getOperand(0)->getName();
              }

            } else {
              errs() << "This case doesn't support\n";
              continue;
            }
          }
        }
      }

      return true;
    }
  };
}

char AddVar::ID = 0;
static RegisterPass<AddVar>
Y("addvars", "Add Vars Pass");
