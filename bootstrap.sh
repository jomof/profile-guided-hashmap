LLVM_BRANCH=llvm-project
mkdir build-$LLVM_BRANCH
cd build-$LLVM_BRANCH
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DLLVM_ENABLE_PROJECTS="clang" ../external/$LLVM_BRANCH/llvm
