LLVM_BRANCH=llvm
#rf -rf build-$LLVM_BRANCH
mkdir build-$LLVM_BRANCH
cd build-$LLVM_BRANCH
cmake -G Ninja -DCMAKE_MAKE_PROGRAM=ninja -DCMAKE_BUILD_TYPE=Release -DLLVM_ENABLE_PROJECTS="clang" ../external/$LLVM_BRANCH/llvm
ninja
