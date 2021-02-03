set CARCH=x86-64

"%PYTHON%" -m pip install --no-deps --ignore-installed -vv .
if errorlevel 1 exit 1
