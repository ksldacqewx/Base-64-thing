@echo off
setlocal enabledelayedexpansion


:start
set "r=0123456789, .ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
set /p X="Base-10 Number: "
set Y=%X%

:get
set /a off=X%%65
for /f %%A in ("!off!") do set "out=!r:~%%A,1!!out!
set /a X/=65
if %X% GTR 0 goto :get

echo !out!
>>outputs.txt echo.%Y% ^= !out!
set X=
set Y=
set off=
set r=
set out=
pause >nul
goto start