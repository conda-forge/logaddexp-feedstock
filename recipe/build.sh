#!/bin/bash

set -ex

mkdir build && cd build

# https://conda-forge.org/blog/posts/2020-10-29-macos-arm64/
cmake ${CMAKE_ARGS} \
     -DCMAKE_BUILD_TYPE=Release \
     -DCMAKE_INSTALL_PREFIX:PATH=$PREFIX \
     ..
cmake --build . --config Release
cmake --build . --config Release --target test
cmake --build . --config Release --target install
