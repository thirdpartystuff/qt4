@echo off
setlocal
if exist "%~dp0ext\win32-clang350-linux64\bin\clang.exe" goto installed
git clone https://github.com/thirdpartystuff/win32-clang350-linux64 "%~dp0ext\win32-clang350-linux64" || exit /B 1
:installed
