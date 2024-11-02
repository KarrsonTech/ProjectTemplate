#!/bin/bash

pushd $(dirname $(realpath "$0"))
pushd ..
rm -rf App/Binaries > /dev/null 2>&1
rm -rf Core/Binaries > /dev/null 2>&1
rm -rf Project > /dev/null 2>&1
cmake -S . -B Project
popd
popd
read -n 1 -s -r -p "Press any key to continue . . ."
printf '\n'