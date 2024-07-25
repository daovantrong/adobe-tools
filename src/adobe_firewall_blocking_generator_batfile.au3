#RequireAdmin
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Change2CUI=y
#AutoIt3Wrapper_Res_requestedExecutionLevel=requireAdministrator
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <Array.au3>
#include <File.au3>
#include <MsgBoxConstants.au3>

;~ Global $sFolderList = "C:\Program Files (x86)\Adobe|"
;~ $sFolderList &= "C:\Program Files (x86)\Adobe\Adobe Creative Cloud Experience|"
;~ $sFolderList &= "C:\Program Files (x86)\Adobe\Adobe Creative Cloud\ACC|"
;~ $sFolderList &= "C:\Program Files (x86)\Adobe\Adobe Creative Cloud\Utils|"
;~ $sFolderList &= "C:\Program Files (x86)\Adobe\Adobe Creative Cloud\Utils\zip|"
;~ $sFolderList &= "C:\Program Files (x86)\Adobe\Adobe Sync\CoreSync|"
;~ $sFolderList &= "C:\Program Files (x86)\Adobe\Adobe Sync\CoreSync\customhook|"
;~ $sFolderList &= "C:\Program Files (x86)\Adobe\Adobe Sync\CoreSync\LogCollectorTool|"
;~ $sFolderList &= "C:\Program Files (x86)\Adobe\Adobe Sync\CoreSyncPlugins\LiveType\customhook|"
;~ $sFolderList &= "C:\Program Files\Adobe\Adobe Creative Cloud Experience|"
;~ $sFolderList &= "C:\Program Files\Adobe\Adobe Creative Cloud Experience\js\node_modules\adobe-cr\build\Release|"
;~ $sFolderList &= "C:\Program Files\Adobe\Adobe Creative Cloud Experience\libs|"
;~ $sFolderList &= "C:\Program Files\Adobe\Adobe Creative Cloud\ACC|"
;~ $sFolderList &= "C:\Program Files\Adobe\Adobe Creative Cloud\Diagnostics|"
;~ $sFolderList &= "C:\Program Files\Adobe\Adobe Photoshop 2024|"
;~ $sFolderList &= "C:\Program Files\Adobe\Adobe Photoshop 2024\Required\CEP\CEPHtmlEngine|"
;~ $sFolderList &= "C:\Program Files\Adobe\Adobe Photoshop 2024\Required|"
;~ $sFolderList &= "C:\Program Files\Adobe\Adobe Photoshop 2024\Required\DynamicLinkMediaServer|"
;~ $sFolderList &= "C:\Program Files\Common Files\Adobe\Adobe Desktop Common\ADBox|"
;~ $sFolderList &= "C:\Program Files\Common Files\Adobe\Adobe Desktop Common\HEX|"
;~ $sFolderList &= "C:\Program Files\Common Files\Adobe\Adobe Desktop Common\NGL|"
;~ $sFolderList &= "C:\Program Files\Common Files\Adobe\Adobe Desktop Common\RemoteComponents\LiveType\customehook|"
;~ $sFolderList &= "C:\Program Files\Common Files\Adobe\Adobe Desktop Common\RemoteComponents\UPI\customhook|"
;~ $sFolderList &= "C:\Program Files\Common Files\Adobe\Adobe Desktop Common\RemoteComponents\UPI\ExManCoreLib|"
;~ $sFolderList &= "C:\Program Files\Common Files\Adobe\Adobe Desktop Common\RemoteComponents\UPI\UnifiedPluginInstallerAgent|"
;~ $sFolderList &= "C:\Program Files\Common Files\Adobe\Creative Cloud Libraries|"
;~ $sFolderList &= "C:\Program Files\Common Files\Adobe\Creative Cloud Libraries\libs|"
;~ $sFolderList &= "C:\Program Files\Common Files\Adobe\Microsoft\EdgeWebView|"
;~ $sFolderList &= "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\AdobeGenuineClient|"
;~ $sFolderList &= "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\AdobeGenuineClient\customhook|"
;~ $sFolderList &= "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\ADS|"
;~ $sFolderList &= "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\ADS\customHook|"
;~ $sFolderList &= "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\DEBox\DE6\resources\libraries|"
;~ $sFolderList &= "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\DEBox|"
;~ $sFolderList &= "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\ElevationManager|"
;~ $sFolderList &= "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\FilesPanel|"
;~ $sFolderList &= "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\HDBox|"
;~ $sFolderList &= "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\HDBox\customhook|"
;~ $sFolderList &= "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\IPCBox|"
;~ $sFolderList &= "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\IPCBox\customhook|"
;~ $sFolderList &= "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\LCC|"
;~ $sFolderList &= "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\Runtime\customhook|"
;~ $sFolderList &= "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\Runtime\customhook\vc14\32bit|"
;~ $sFolderList &= "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\Runtime\customhook\vc14\64bit|"
;~ $sFolderList &= "C:\Program Files (x86)\Common Files\Adobe\AdobeGCClient|"
;~ $sFolderList &= "C:\Program Files (x86)\Common Files\Adobe\AdobeGCClient\temp|"
;~ $sFolderList &= "C:\Program Files (x86)\Common Files\Adobe\AdobeNotificationManager|"
;~ $sFolderList &= "C:\Program Files (x86)\Common Files\Adobe\CoreSyncExtension\customhook|"
;~ $sFolderList &= "C:\Program Files (x86)\Common Files\Adobe\OOBE\PDApp\IPC|"
;~ $sFolderList &= "C:\Program Files (x86)\Common Files\Adobe\OOBE\PDApp\IPC\customhook|"
;~ $sFolderList &= "C:\Program Files\WindowsApps\AdobeNotificationClient_6.0.0.1_x86__enpm4xejd91yc"
;~ $sFolderList &= "C:\Users\" & @UserName & "\AppData\Local\Adobe|"
;~ $sFolderList &= "C:\Users\" & @UserName & "\AppData\Roaming\Adobe"

Global $sFolderList = "C:\Program Files (x86)|"
$sFolderList &= "C:\Program Files|"
$sFolderList &= "C:\Program Files\Common Files|"
$sFolderList &= "C:\Program Files (x86)\Common Files|"
$sFolderList &= "C:\ProgramData|"
$sFolderList &= "C:\Program Files\WindowsApps|"
$sFolderList &= "C:\Users\" & @UserName & "\AppData\Local|"
$sFolderList &= "C:\Users\" & @UserName & "\AppData\Roaming"

Global $sFolderList_NEW, $aArrayFolder, $aArrayFolder_NEW
Global $aFolderList = StringSplit($sFolderList, "|", 1)
For $I = 1 To $aFolderList[0]
	If StringStripWS($aFolderList[$I], 7) <> "" Then
		ConsoleWrite("+ Searching for Adobe in folder (" & $I & "/" & $aFolderList[0] & "): " & $aFolderList[$I] & @CRLF)
		$aArrayFolder = _FileListToArrayRec($aFolderList[$I], "*", $FLTAR_FOLDERS, $FLTAR_NORECUR, $FLTAR_SORT, $FLTAR_FULLPATH)
		If IsArray($aArrayFolder) Then
			For $X = 1 To $aArrayFolder[0]
				If StringInStr($aArrayFolder[$X], 'Adobe') Then
					ConsoleWrite("-To add: " & $aArrayFolder[$X] & @CRLF)
					$sFolderList_NEW &= $aArrayFolder[$X] & "|"
				EndIf
			Next
		EndIf
		$aArrayFolder = 0
	EndIf
Next

Global $aArrayFolder_NEW = StringSplit($sFolderList_NEW, "|", 3)
$aFolderList = _ArrayUnique($aArrayFolder_NEW)
;~ $aFolderList = StringSplit($sFolderList, "|", 1)

Global $szDrive, $szDir, $szFName, $szExt
Global $aFullArray[1], $xFolderList, $aArrayFiles
For $I = 1 To $aFolderList[0]
	If StringStripWS($aFolderList[$I], 7) <> "" Then
		ConsoleWrite('+ Searching for EXE file in folder (' & $I & "/" & $aFolderList[0] & "): " & $aFolderList[$I] & @CRLF)
		$aArrayFiles = _FileListToArrayRec($aFolderList[$I], "*.exe", $FLTAR_FILES, $FLTAR_RECUR, $FLTAR_SORT, $FLTAR_FULLPATH)
		If IsArray($aArrayFiles) Then _ArrayAdd($aFullArray, $aArrayFiles)
		$aArrayFiles = 0
	EndIf
Next
ConsoleWrite("! Processing found file paths, directory filtering!" & @CRLF)
For $I = 1 To UBound($aFullArray) - 1
	If StringStripWS($aFullArray[$I], 7) <> "" Then
		_PathSplit($aFullArray[$I], $szDrive, $szDir, $szFName, $szExt)
;~ 		ConsoleWrite("Path: "&$aFullArray[$i] & @CRLF)
;~ 		ConsoleWrite("FName: "&$szFName & @CRLF)
		If StringStripWS($szDrive & $szDir, 7) <> "" Then
;~ 		ConsoleWrite("-Add Dir: " & $szDrive & $szDir & @CRLF)
			$xFolderList &= _PathRemoveTrail($szDrive & $szDir) & "|"
		EndIf
	EndIf

Next

$aArrayFolder_NEW = StringSplit($xFolderList, "|", 3)
Local $aArrayUnique = _ArrayUnique($aArrayFolder_NEW)

ConsoleWrite("! Adobe_Block_Firewall_Files.bat file content is being produced." & @CRLF)
Global $cmdContent
$cmdContent &= '@REM Adobe firewall blocker' & @CRLF
$cmdContent &= '@REM Author: Dao Van Trong - TRONG.PRO' & @CRLF
$cmdContent &= '@REM Description: This script blocks or unblocks Adobe-related executables in Windows Firewall.' & @CRLF
$cmdContent &= '@REM Usage:' & @CRLF
$cmdContent &= '@REM   - To block executables: Adobe_Block_Firewall_Files.bat' & @CRLF
$cmdContent &= '@REM   - To unblock (delete) existing rules: Adobe_Block_Firewall_Files.bat -delete' & @CRLF
$cmdContent &= '' & @CRLF
$cmdContent &= '@ECHO off' & @CRLF
$cmdContent &= 'SETLOCAL enabledelayedexpansion' & @CRLF
$cmdContent &= '' & @CRLF
$cmdContent &= 'REM Check if the script should delete existing rules' & @CRLF
$cmdContent &= 'IF /i "%1"=="-delete" (' & @CRLF
$cmdContent &= '    ECHO Deleting existing firewall rules...' & @CRLF
$cmdContent &= '    FOR /f "tokens=*" %%r IN (' & "'powershell -command " & '"(Get-NetFirewallRule | where {$_.DisplayName -like ' & "'*Adobe-Block'}).DisplayName" & '"' & "') DO (" & @CRLF
$cmdContent &= '        NETSH advfirewall firewall delete rule name="%%r"' & @CRLF
$cmdContent &= '    )' & @CRLF
$cmdContent &= '    ECHO Firewall rules deleted successfully.' & @CRLF
$cmdContent &= '    PAUSE' & @CRLF
$cmdContent &= '    GOTO :eof' & @CRLF
$cmdContent &= ')' & @CRLF & @CRLF

For $I = 1 To UBound($aArrayUnique) - 1
	If StringStripWS($aArrayUnique[$I], 7) <> "" Then
		ConsoleWrite("- Add Dir: " & $aArrayUnique[$I] & @CRLF)
		$cmdContent &= 'REM Process each folder and block executables' & @CRLF
		$cmdContent &= 'IF EXIST "' & $aArrayUnique[$I] & '" (' & @CRLF
		$cmdContent &= '	FOR /R "' & $aArrayUnique[$I] & '" %%X IN (*.exe) DO (' & @CRLF
		$cmdContent &= '		ECHO Blocking: %%~nX' & @CRLF
		$cmdContent &= '		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=out program="%%X" action=block' & @CRLF
		$cmdContent &= '		NETSH advfirewall firewall add rule name="%%~nX Adobe-Block" dir=in program="%%X" action=block' & @CRLF
		$cmdContent &= '	)' & @CRLF
		$cmdContent &= ')' & @CRLF & @CRLF
	EndIf
Next

Global $File_Adobe_Block_bat = @ScriptDir & '\Adobe_Block_Firewall_Files.bat'
If FileExists($File_Adobe_Block_bat) Then
	ConsoleWrite("!Try to delete the old file: " & $File_Adobe_Block_bat & @CRLF)
	FileSetAttrib($File_Adobe_Block_bat, '-RHSA')
	FileDelete($File_Adobe_Block_bat)
EndIf
;~ While FileExists($File_Adobe_Block_bat)
;~ 	Local $ASK = MsgBox(5 + 48 + 262144, "ERROR - Adobe Block Generator", "The "&$File_Adobe_Block_bat&" file cannot be deleted!"&@CRLF, 30)
;~ 	Switch $ASK
;~ 		Case 4, 10, 11
;~ 			FileDelete($File_Adobe_Block_bat)
;~ 		Case Else
;~ 			ExitLoop
;~ 	EndSwitch
;~ WEnd
If FileExists($File_Adobe_Block_bat) Then
	ConsoleWrite("!ERROR - The " & $File_Adobe_Block_bat & " file cannot be deleted!" & @CRLF)
	Sleep(5000)
EndIf

ConsoleWrite("!Write new content to file: " & $File_Adobe_Block_bat & @CRLF)
Global $hOpen = FileOpen($File_Adobe_Block_bat, 2 + 8 + 256)
FileWrite($File_Adobe_Block_bat, $cmdContent)
FileClose($hOpen)
$hOpen = FileOpen($File_Adobe_Block_bat, 256)
Local $TESTCONTENT = FileRead($hOpen)
FileClose($hOpen)

If ((StringCompare($TESTCONTENT, $cmdContent)) Or (StringLen($TESTCONTENT) = StringLen($cmdContent))) Then
	ConsoleWrite("+Success - Writing to file " & $File_Adobe_Block_bat & " is completed !" & @CRLF)
Else
	ConsoleWrite("!ERROR - Writing file " & $File_Adobe_Block_bat & " has failed !" & @CRLF)
EndIf
;~ ConsoleWrite("!Pause the program for 5 seconds to see the results!" & @CRLF)
$cmdContent = ''
$cmdContent = '@REM Adobe firewall unBlocker' & @CRLF
$cmdContent = '@REM Author: Dao Van Trong - TRONG.PRO' & @CRLF
$cmdContent &= '@REM Description: This script unblocks Adobe-related executables in Windows Firewall.' & @CRLF
$cmdContent &= '@REM Usage:' & @CRLF
$cmdContent &= '@REM   - To unblock (delete) existing rules: UnInstall_Adobe_Block_Firewall_Files.bat' & @CRLF
$cmdContent &= '' & @CRLF
$cmdContent &= '@ECHO off' & @CRLF
$cmdContent &= 'SETLOCAL enabledelayedexpansion' & @CRLF
$cmdContent &= '' & @CRLF
$cmdContent &= '' & @CRLF
$cmdContent &= '    ECHO Deleting existing firewall rules...' & @CRLF
$cmdContent &= '    FOR /f "tokens=*" %%r IN (' & "'powershell -command " & '"(Get-NetFirewallRule | where {$_.DisplayName -like ' & "'*Adobe-Block'}).DisplayName" & '"' & "') DO (" & @CRLF
$cmdContent &= '        NETSH advfirewall firewall delete rule name="%%r"' & @CRLF
$cmdContent &= '    )' & @CRLF
$cmdContent &= '    ECHO Firewall rules deleted successfully.' & @CRLF
$cmdContent &= '    PAUSE' & @CRLF
$cmdContent &= '    GOTO :eof' & @CRLF
$cmdContent &= '' & @CRLF & @CRLF
Global $File_UnInstall_Adobe_Block_bat = @ScriptDir & '\UnInstall_Adobe_Block_Firewall_Files.bat'
$hOpen = FileOpen($File_UnInstall_Adobe_Block_bat, 2 + 8 + 256)
Local $TESTCONTENT = FileWrite($hOpen, $cmdContent)
FileClose($hOpen)

Sleep(1000)
Exit

Func _PathRemoveTrail($sPath)
	If StringRight($sPath, 1) == '\' Then
		$sPath = StringTrimRight($sPath, 1)
	EndIf
	Return $sPath
EndFunc   ;==>_PathRemoveTrail

;# by Dao Van Trong - TRONG.PRO

