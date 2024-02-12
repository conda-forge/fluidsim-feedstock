:: check if clang-cl is on path as required
clang-cl.exe --version
if %ERRORLEVEL% neq 0 exit 1

:: set compilers to clang-cl
set "CC=clang-cl"
set "CXX=clang-cl"

"%PYTHON%" -m pip install --no-deps --ignore-installed -vv .
if errorlevel 1 exit 1
