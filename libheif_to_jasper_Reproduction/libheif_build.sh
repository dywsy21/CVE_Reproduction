#! /bin/bash

cd libheif-1.17.5
mkdir build && cd build
CC="clang -fsanitize=address" CXX="clang++ -fsanitize=address" cmake -DCMAKE_BUILD_TYPE=Debug -DWITH_UNCOMPRESSED_CODEC=ON ..
make -j$(nproc)