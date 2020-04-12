@echo off

REM Simple Windows batch file to dump service information to re-create using NSSM on a fresh machine/install/etc
REM usage: dump servicename
REM eg dump glances
REM 
REM Remember to change and/or create destination path before use

nssm dump %1 > "E:\backups\nssm settings\%1.bat"
