@echo off
set /p name="Inserisci il nome del nuovo branch: "
powershell -ExecutionPolicy Bypass -File "%~dp0new_branch.ps1" -BranchName "%name%"
pause
