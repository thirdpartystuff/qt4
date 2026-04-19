@echo off
setlocal

call "%~dp0_tools\mingw-8.1.0-64.cmd" || exit /B 1
set "PATH=%~dp0_tools\ext\win32-mingw810-64\bin;%PATH%"

if not exist _build mkdir _build
if not exist _build\msvc mkdir _build\msvc
cd _build\msvc || exit /B 1

if exist "%~dp0_build\msvc\Qt4.sln" goto skip_cmake

call "%~dp0_tools\cmake-3.31.4.cmd" ^
    "%~dp0_cmake\progs" ^
    || exit /B 1

:skip_cmake

call "%~dp0_tools\cmake-3.31.4.cmd" ^
    --build . --config Release --parallel ^
    || exit /B 1
