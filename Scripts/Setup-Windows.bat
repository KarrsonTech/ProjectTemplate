@echo off

pushd %~dp0"
pushd ..
rmdir /s /q App\Binaries > nul 2>&1
rmdir /s /q Core\Binaries > nul 2>&1
rmdir /s /q Project > nul 2>&1
cmake -S . -B Project
popd
popd
pause