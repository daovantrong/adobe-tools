@REM Author: Dao Van Trong - TRONG.PRO
@REM Description: This script unblocks Adobe-related executables in Windows Firewall.
@REM Usage:
@REM   - To unblock (delete) existing rules: UnInstall_Adobe_Block_Firewall.bat

@ECHO off
SETLOCAL enabledelayedexpansion


    ECHO Deleting existing firewall rules...
    FOR /f "tokens=*" %%r IN ('powershell -command "(Get-NetFirewallRule | where {$_.DisplayName -like '*Adobe-Block'}).DisplayName"') DO (
        NETSH advfirewall firewall delete rule name="%%r"
    )
    ECHO Firewall rules deleted successfully.
    PAUSE
    GOTO :eof


