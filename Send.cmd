@echo off
ECHO.
ECHO Kryptex tools for Pyrin
ECHO.
ECHO SEND FUNDS
ECHO.
ECHO THIS CMD SHOULD BE RUN WHEN NODE AND WALLET ARE RUNNING AND SYNCED
ECHO.
set /p wallet=Enter wallet:
set /p sum=Enter sum:
pyrinwallet.exe send -t %wallet% -v %sum%

pause