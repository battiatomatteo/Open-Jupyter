@echo off
title Avvio AI Lab - Miniconda
color 0A

REM Funzione di caricamento con %
call :loading "Attivazione ambiente Miniconda"
CALL "%USERPROFILE%\miniconda3\Scripts\activate.bat"
CALL conda activate ai-lab

call :loading "Accesso alla cartella AI_Lab"
cd /d "%USERPROFILE%\AI_Lab"

call :loading "Avvio di Jupyter Notebook"
CALL jupyter notebook
goto :eof

:loading
setlocal enabledelayedexpansion
set "msg=%~1"
echo %msg%...
for %%i in (10 30 50 70 90 100) do (
    <nul set /p="Caricamento: %%i%%"
    timeout /t 1 >nul
    cls
    echo %msg%...
)
echo Completato ✅
echo.
endlocal
goto :eof
