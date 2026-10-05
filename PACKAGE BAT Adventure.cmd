@echo off
setlocal
cd /d "%~dp0"
title Package BAT Insurance Adventure
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0PACKAGE BAT Adventure.ps1"
if errorlevel 1 (
  echo.
  echo Package creation failed. Please check that PowerShell is available and try again.
  pause
  exit /b 1
)
echo.
echo The portable ZIP is ready: BAT-Insurance-Adventure.zip
pause
