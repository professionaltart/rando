@echo off
REM change destination path before use

nssm dump %1 > "E:\backups\nssm settings\%1.bat"
