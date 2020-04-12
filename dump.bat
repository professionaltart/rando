@echo off
REM usage: dump servicename
REM eg dump glances
REM 
REM Remember to change and/or create destination path before use

nssm dump %1 > "E:\backups\nssm settings\%1.bat"
