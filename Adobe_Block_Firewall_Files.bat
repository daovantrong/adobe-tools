@REM Adobe firewall blocker
@REM Author: Dao Van Trong - TRONG.PRO
@REM Description: This script blocks or unblocks Adobe-related executables in Windows Firewall.
@REM Usage:
@REM   - To block executables: Adobe_Block_Firewall.bat
@REM   - To unblock (delete) existing rules: Adobe_Block_Firewall.bat -delete

@ECHO off
SETLOCAL enabledelayedexpansion

REM Check if the script should delete existing rules
IF /i "%1"=="-delete" (
    ECHO Deleting existing firewall rules...
    FOR /f "tokens=*" %%r IN ('powershell -command "(Get-NetFirewallRule | where {$_.DisplayName -like '*Adobe-Block'}).DisplayName"') DO (
        NETSH advfirewall firewall delete rule name="%%r"
    )
    ECHO Firewall rules deleted successfully.
    PAUSE
    GOTO :eof
)

REM Process each folder and block executables
IF EXIST "C:\Program Files (x86)\Adobe\Adobe Creative Cloud Experience" (
	FOR /R "C:\Program Files (x86)\Adobe\Adobe Creative Cloud Experience" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files (x86)\Adobe\Adobe Creative Cloud\ACC" (
	FOR /R "C:\Program Files (x86)\Adobe\Adobe Creative Cloud\ACC" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files (x86)\Adobe\Adobe Creative Cloud\Utils" (
	FOR /R "C:\Program Files (x86)\Adobe\Adobe Creative Cloud\Utils" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files (x86)\Adobe\Adobe Creative Cloud\Utils\zip" (
	FOR /R "C:\Program Files (x86)\Adobe\Adobe Creative Cloud\Utils\zip" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files (x86)\Adobe\Adobe Sync\CoreSync" (
	FOR /R "C:\Program Files (x86)\Adobe\Adobe Sync\CoreSync" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files (x86)\Adobe\Adobe Sync\CoreSync\customhook" (
	FOR /R "C:\Program Files (x86)\Adobe\Adobe Sync\CoreSync\customhook" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files (x86)\Adobe\Adobe Sync\CoreSync\LogCollectorTool" (
	FOR /R "C:\Program Files (x86)\Adobe\Adobe Sync\CoreSync\LogCollectorTool" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files (x86)\Adobe\Adobe Sync\CoreSyncPlugins\LiveType\customhook" (
	FOR /R "C:\Program Files (x86)\Adobe\Adobe Sync\CoreSyncPlugins\LiveType\customhook" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files\Adobe\Adobe Creative Cloud Experience" (
	FOR /R "C:\Program Files\Adobe\Adobe Creative Cloud Experience" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files\Adobe\Adobe Creative Cloud Experience\js\node_modules\adobe-cr\build\Release" (
	FOR /R "C:\Program Files\Adobe\Adobe Creative Cloud Experience\js\node_modules\adobe-cr\build\Release" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files\Adobe\Adobe Creative Cloud Experience\libs" (
	FOR /R "C:\Program Files\Adobe\Adobe Creative Cloud Experience\libs" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files\Adobe\Adobe Creative Cloud\ACC" (
	FOR /R "C:\Program Files\Adobe\Adobe Creative Cloud\ACC" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files\Adobe\Adobe Creative Cloud\Diagnostics" (
	FOR /R "C:\Program Files\Adobe\Adobe Creative Cloud\Diagnostics" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files\Adobe\Adobe Photoshop 2024" (
	FOR /R "C:\Program Files\Adobe\Adobe Photoshop 2024" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files\Adobe\Adobe Photoshop 2024\Required\CEP\CEPHtmlEngine" (
	FOR /R "C:\Program Files\Adobe\Adobe Photoshop 2024\Required\CEP\CEPHtmlEngine" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files\Adobe\Adobe Photoshop 2024\Required" (
	FOR /R "C:\Program Files\Adobe\Adobe Photoshop 2024\Required" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files\Adobe\Adobe Photoshop 2024\Required\DynamicLinkMediaServer" (
	FOR /R "C:\Program Files\Adobe\Adobe Photoshop 2024\Required\DynamicLinkMediaServer" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files\Common Files\Adobe\Adobe Desktop Common\ADBox" (
	FOR /R "C:\Program Files\Common Files\Adobe\Adobe Desktop Common\ADBox" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files\Common Files\Adobe\Adobe Desktop Common\HEX" (
	FOR /R "C:\Program Files\Common Files\Adobe\Adobe Desktop Common\HEX" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files\Common Files\Adobe\Adobe Desktop Common\NGL" (
	FOR /R "C:\Program Files\Common Files\Adobe\Adobe Desktop Common\NGL" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files\Common Files\Adobe\Adobe Desktop Common\RemoteComponents\LiveType\customehook" (
	FOR /R "C:\Program Files\Common Files\Adobe\Adobe Desktop Common\RemoteComponents\LiveType\customehook" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files\Common Files\Adobe\Adobe Desktop Common\RemoteComponents\UPI\customhook" (
	FOR /R "C:\Program Files\Common Files\Adobe\Adobe Desktop Common\RemoteComponents\UPI\customhook" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files\Common Files\Adobe\Adobe Desktop Common\RemoteComponents\UPI\ExManCoreLib" (
	FOR /R "C:\Program Files\Common Files\Adobe\Adobe Desktop Common\RemoteComponents\UPI\ExManCoreLib" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files\Common Files\Adobe\Adobe Desktop Common\RemoteComponents\UPI\UnifiedPluginInstallerAgent" (
	FOR /R "C:\Program Files\Common Files\Adobe\Adobe Desktop Common\RemoteComponents\UPI\UnifiedPluginInstallerAgent" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files\Common Files\Adobe\Creative Cloud Libraries" (
	FOR /R "C:\Program Files\Common Files\Adobe\Creative Cloud Libraries" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files\Common Files\Adobe\Creative Cloud Libraries\libs" (
	FOR /R "C:\Program Files\Common Files\Adobe\Creative Cloud Libraries\libs" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files\Common Files\Adobe\Microsoft\EdgeWebView" (
	FOR /R "C:\Program Files\Common Files\Adobe\Microsoft\EdgeWebView" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\AdobeGenuineClient" (
	FOR /R "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\AdobeGenuineClient" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\AdobeGenuineClient\customhook" (
	FOR /R "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\AdobeGenuineClient\customhook" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\ADS" (
	FOR /R "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\ADS" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\ADS\customHook" (
	FOR /R "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\ADS\customHook" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\DEBox\DE6\resources\libraries" (
	FOR /R "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\DEBox\DE6\resources\libraries" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\DEBox" (
	FOR /R "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\DEBox" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\ElevationManager" (
	FOR /R "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\ElevationManager" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\FilesPanel" (
	FOR /R "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\FilesPanel" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\HDBox" (
	FOR /R "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\HDBox" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\HDBox\customhook" (
	FOR /R "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\HDBox\customhook" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\IPCBox" (
	FOR /R "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\IPCBox" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\IPCBox\customhook" (
	FOR /R "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\IPCBox\customhook" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\LCC" (
	FOR /R "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\LCC" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\Runtime\customhook" (
	FOR /R "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\Runtime\customhook" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\Runtime\customhook\vc14\32bit" (
	FOR /R "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\Runtime\customhook\vc14\32bit" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\Runtime\customhook\vc14\64bit" (
	FOR /R "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\Runtime\customhook\vc14\64bit" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files (x86)\Common Files\Adobe\AdobeGCClient" (
	FOR /R "C:\Program Files (x86)\Common Files\Adobe\AdobeGCClient" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files (x86)\Common Files\Adobe\AdobeGCClient\temp" (
	FOR /R "C:\Program Files (x86)\Common Files\Adobe\AdobeGCClient\temp" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files (x86)\Common Files\Adobe\AdobeNotificationManager" (
	FOR /R "C:\Program Files (x86)\Common Files\Adobe\AdobeNotificationManager" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files (x86)\Common Files\Adobe\CoreSyncExtension\customhook" (
	FOR /R "C:\Program Files (x86)\Common Files\Adobe\CoreSyncExtension\customhook" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files (x86)\Common Files\Adobe\OOBE\PDApp\IPC" (
	FOR /R "C:\Program Files (x86)\Common Files\Adobe\OOBE\PDApp\IPC" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files (x86)\Common Files\Adobe\OOBE\PDApp\IPC\customhook" (
	FOR /R "C:\Program Files (x86)\Common Files\Adobe\OOBE\PDApp\IPC\customhook" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

REM Process each folder and block executables
IF EXIST "C:\Program Files\WindowsApps\AdobeNotificationClient_6.0.0.1_x86__enpm4xejd91yc" (
	FOR /R "C:\Program Files\WindowsApps\AdobeNotificationClient_6.0.0.1_x86__enpm4xejd91yc" %%X IN (*.exe) DO (
		ECHO Blocking: %%~nX
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block
		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block
	)
)

