docker build -t llvm-hash-dev-image .
docker tag llvm-hash-dev-image jomof/private:llvm-hash-dev-image
docker push jomof/private:llvm-hash-dev-image