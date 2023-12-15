@echo off
ECHO.
ECHO Kryptex tools for Pyrin
ECHO.
ECHO INITIAL SETUP
ECHO.
ECHO RUN NODE...
start /min cmd.exe /c "pyipad.exe --utxoindex"
timeout 10 > NUL
ECHO.
ECHO ==========================
ECHO SETUP WALLET...
pyrinwallet.exe create 
ECHO.
ECHO ==========================
ECHO RUN WALLET...
start /min cmd.exe /c "pyrinwallet.exe start-daemon"
timeout 10 > NUL
ECHO.
ECHO ==========================
pyrinwallet.exe dump-unencrypted-data
ECHO.
ECHO ==========================
pyrinwallet.exe new-address
ECHO.
ECHO COPY AND WRITE DOWN YOUR SEED PHRASE AND YOUR WALLET ADRESS BEFORE THEY DISAPPEAR!
ECHO.
ECHO CONSIDER USING KRYPTEX POOL
ECHO.
Taskkill /IM pyipad.exe /F > NUL
Taskkill /IM pyrinwallet.exe /F > NUL
pause
explorer "https://pool.kryptex.com/"
pause
pause
