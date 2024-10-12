# To build libheif:
```bash
cd libheif-1.17.5
mkdir build && cd build
CC="clang -fsanitize=address" CXX="clang++ -fsanitize=address" cmake -DCMAKE_BUILD_TYPE=Debug -DWITH_UNCOMPRESSED_CODEC=ON ..
make -j$(nproc)
```

# TO build jasper:
```bash
cd jasper-4.1.0
mkdir build && cd build
CC="clang -fsanitize=address" CXX="clang++ -fsanitize=address" cmake -DCMAKE_BUILD_TYPE=Debug -DWITH_UNCOMPRESSED_CODEC=ON ..
make -j$(nproc)
```

# CVEs
1. CVE-2023-49460

To reproduce the bug in libheif:
```bash
./libheif-1.17.5/build/examples/heif-convert ./pocs/poc_49460 test.png
```

2. CVE-2023-49462


3. CVE-2023-49463


4. CVE-2023-49464