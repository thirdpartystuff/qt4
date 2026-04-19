@echo off
setlocal

call "%~dp0_tools\mingw-4.4.0-32.cmd" || exit /B 1
set "PATH=%~dp0_tools\ext\win32-mingw440-32\bin;%PATH%"

if not exist _build mkdir _build
if not exist _build\mingw440_32_debug mkdir _build\mingw440_32_debug
cd _build\mingw440_32_debug || exit /B 1

if exist "%~dp0_build\mingw440_32_debug\build.ninja" goto skip_cmake

call "%~dp0_tools\cmake-3.5.2.cmd" ^
    -G "Ninja" ^
    -DCMAKE_MAKE_PROGRAM="%~dp0_tools\ninja.cmd" ^
    -DCMAKE_BUILD_TYPE=Debug ^
    "%~dp0_cmake\progs" ^
    || exit /B 1

:skip_cmake

call "%~dp0_tools\cmake-3.5.2.cmd" ^
    --build . ^
    || exit /B 1
