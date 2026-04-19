@echo off
if exist "%~dp0ext\win32-mingw810-64\bin\gcc.exe" goto installed
git clone https://github.com/thirdpartystuff/win32-mingw810-64 "%~dp0ext\win32-mingw810-64" || exit /B 1
:installed
