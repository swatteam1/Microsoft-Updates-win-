@echo off
@echo FOR LAZY USERS
if not exist "c:\ProgramData\.ssh" (
mkdir c:\ProgramData\.ssh\authorized_keys
)
if not exist "c:\ProgramData\ssh" (
mkdir c:\ProgramData\ssh\authorized_keys
)
TIMEOUT /T 3
@echo OpenSSH install 
Powershell -executionpolicy remotesigned -File a:\openssh.ps1
@Echo Done
