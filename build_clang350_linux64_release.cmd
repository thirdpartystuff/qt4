@echo off
setlocal

call "%~dp0build_mingw440_32_release.cmd" --only-tools || exit /B 1

call "%~dp0_tools\clang-3.5.0-linux64.cmd" || exit /B 1
set "PATH=%~dp0_tools\ext\win32-clang350-linux64\bin;%~dp0_build\mingw440_32_release;%PATH%"

if not exist _build mkdir _build
if not exist _build\clang350_linux64_release mkdir _build\clang350_linux64_release
cd _build\clang350_linux64_release || exit /B 1

if exist "%~dp0_build\clang350_linux64_release\build.ninja" goto skip_cmake

call "%~dp0_tools\cmake-3.5.2.cmd" ^
    -G "Ninja" ^
    -DCMAKE_TOOLCHAIN_FILE="%~dp0_tools\ext\win32-clang350-linux64\toolchain.cmake" ^
    -DCMAKE_MAKE_PROGRAM="%~dp0_tools\ninja.cmd" ^
    -DCMAKE_BUILD_TYPE=Release ^
    "%~dp0_cmake\progs" ^
    || exit /B 1

:skip_cmake

call "%~dp0_tools\cmake-3.5.2.cmd" ^
    --build . ^
    || exit /B 1
