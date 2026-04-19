@echo off
setlocal
set "PATH=%~dp0ext\win32-ninja;%PATH%"
if exist "%~dp0ext\win32-ninja\ninja.exe" goto installed
git clone https://github.com/thirdpartystuff/win32-ninja "%~dp0ext\win32-ninja" || exit /B 1
:installed
"%~dp0ext\win32-ninja\ninja.exe" %* || exit /B 1
