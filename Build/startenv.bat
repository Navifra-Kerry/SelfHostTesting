call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\VC\Auxiliary\Build\vcvarsall.bat" x86

@echo off
set SRC_BUILD=%1
if "x%1"=="x" goto USAGE

cd /d %SRC_BUILD%
set path=%path%;"C:\Program Files (x86)\Git\cmd"

goto EOF

:USAGE
echo Usage of startenv
echo   startenv.bat path_to_build

:EOF
@echo on
