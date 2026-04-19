@echo off
setlocal

call "%~dp0_tools\mingw-8.1.0-64.cmd" || exit /B 1
set "PATH=%~dp0_tools\ext\win32-mingw810-64\bin;%PATH%"

if not exist _build mkdir _build
if not exist _build\mingw810_64_debug mkdir _build\mingw810_64_debug
cd _build\mingw810_64_debug || exit /B 1

if exist "%~dp0_build\mingw810_64_debug\build.ninja" goto skip_cmake

call "%~dp0_tools\cmake-3.5.2.cmd" ^
    -G "Ninja" ^
    -DCMAKE_MAKE_PROGRAM="%~dp0_tools\ninja.cmd" ^
    -DCMAKE_BUILD_TYPE=Debug ^
    -DUSE_CXX17=TRUE ^
    "%~dp0_cmake\progs" ^
    || exit /B 1

:skip_cmake

call "%~dp0_tools\cmake-3.5.2.cmd" ^
    --build . ^
    || exit /B 1
