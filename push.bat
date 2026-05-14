@echo off
set /p msg="Inserisci il messaggio del commit: "
powershell -ExecutionPolicy Bypass -File "%~dp0push.ps1" -Message "%msg%"
pause
