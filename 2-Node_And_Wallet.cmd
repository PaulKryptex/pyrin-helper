@echo off
ECHO.
ECHO Kryptex tools for Pyrin
ECHO.
ECHO NODE AND WALLET STARTUP
ECHO.
ECHO RUN NODE...
start /min cmd.exe /c "pyipad.exe --utxoindex & pause"
timeout 60 > NUL
ECHO NODE IS RUNNING
ECHO.
ECHO ==========================
ECHO RUN WALLET...
start /min cmd.exe /c "pyrinwallet.exe start-daemon & pause"
timeout 10 > NUL
ECHO WALLET IS RUNNING
ECHO.
ECHO NOW WAIT FOR THE NODE TO SYNCRONIZE

timeout 30 > NUL