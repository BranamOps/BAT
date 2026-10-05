@echo off
setlocal
cd /d "%~dp0"
call "%~dp0START BAT Adventure.cmd"
exit /b %errorlevel%
