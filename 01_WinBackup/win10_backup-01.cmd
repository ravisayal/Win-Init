REM  @@ Backup Script

SET    bkup_folder="D:\xbackup"
mkdir  %bkup_folder%

REM  SECTION -10  - Installed Softwares 
REM  ============================


cd      %appdata%
dir  >> %bkup_folder%\10_appdata_list.txt

cd     %programdata% 
dir >> %bkup_folder%\10_program_data_list.txt


REM   List Installed Programs using Powershell
rem powershell -noexit "& ""c:\01_utils\win10_backup-02.ps1"""
powershell -File "c:\01_utils\win10_backup-02.ps1"


robocopy  "%programdata%\chocolatey\logs\chocolatey.log"        "%bkup_folder%\programdata\chocolatey\logs\chocolatey.log"        /E /V /NP /R:0 /W:5  /LOG+:"%bkup_folder%\10_chocolatey.log"
robocopy  "%programdata%\chocolatey\logs\choco.summary.log"     "%bkup_folder%\programdata\chocolatey\logs\choco.summary.log"     /E /V /NP /R:0 /W:5  /LOG+:"%bkup_folder%\10_choco.summary.log"


REM  SECTION -20  - Custom Folders
REM  ============================
								           
REM  robocopy  "C:\vmshared"                    "%bkup_folder%\vmshared"                   /E /V /NP /R:0 /W:5  /LOG+:"%bkup_folder%\20_vmshared.log" 
REM  robocopy  "C:\vm"                          "%bkup_folder%\vm"                         /E /V /NP /R:0 /W:5  /LOG+:"%bkup_folder%\20_vm.log" 
robocopy  "C:\01_utils"                    "%bkup_folder%\01_utils"                   /E /V /NP /R:0 /W:5  /LOG+:"%bkup_folder%\20_01_Utils.log" 

REM  SECTION -30  - User Profile
REM  ============================

robocopy  "%userprofile%\Downloads"        "%bkup_folder%\userprofile\Downloads"     /E /V /NP /R:0 /W:5  /LOG+:"%bkup_folder%\30_userprofile.log"  
robocopy  "%userprofile%\Documents"        "%bkup_folder%\userprofile\Documents"     /E /V /NP /R:0 /W:5  /LOG+:"%bkup_folder%\30_Documents.log" 
robocopy  "%userprofile%\Desktop"          "%bkup_folder%\userprofile\Desktop"       /E /V /NP /R:0 /W:5  /LOG+:"%bkup_folder%\30_Desktop.log" 
robocopy  "%userprofile%\Pictures"         "%bkup_folder%\userprofile\Pictures"      /E /V /NP /R:0 /W:5  /LOG+:"%bkup_folder%\30_Pictures.log" 
robocopy  "%userprofile%\Videos"           "%bkup_folder%\userprofile\Videos"        /E /V /NP /R:0 /W:5  /LOG+:"%bkup_folder%\30_Videos.log" 
robocopy  "%userprofile%\Desktop"          "%bkup_folder%\userprofile\Desktop"       /E /V /NP /R:0 /W:5  /LOG+:"%bkup_folder%\30_Desktop.log" 
robocopy  "%userprofile%\.ssh"             "%bkup_folder%\userprofile\.ssh"          /E /V /NP /R:0 /W:5  /LOG+:"%bkup_folder%\30_ssh.log" 
robocopy  "%userprofile%\.Docker"          "%bkup_folder%\userprofile\.Docker"       /E /V /NP /R:0 /W:5  /LOG+:"%bkup_folder%\30_Docker.log"
robocopy  "%userprofile%\.eclipse"         "%bkup_folder%\userprofile\.eclipse"      /E /V /NP /R:0 /W:5  /LOG+:"%bkup_folder%\30_eclipse.log" 
robocopy  "%userprofile%\.VirtualBox"      "%bkup_folder%\userprofile\.VirtualBox"   /E /V /NP /R:0 /W:5  /LOG+:"%bkup_folder%\30_VirtualBox.log"
REM robocopy  "%userprofile%\.VSCode"          "%bkup_folder%\userprofile\.VSCode"       /E /V /NP /R:0 /W:5  /LOG+:"%bkup_folder%\30_VSCode.log"
 

REM  SECTION -30  - APP Data
REM  ============================


robocopy  "%appdata%\Notepad++"            "%bkup_folder%\appdata\04_notepad++"       /E /V /NP /R:0 /W:5  /LOG+:"%bkup_folder%\40_notepad++.log" 
robocopy  "%appdata%\Sizer4"               "%bkup_folder%\appdata\05_Sizer4"          /E /V /NP /R:0 /W:5  /LOG+:"%bkup_folder%\40_sizer4.log" 
robocopy  "%appdata%\code"                 "%bkup_folder%\appdata\06_code"            /E /V /NP /R:0 /W:5  /LOG+:"%bkup_folder%\40_vscode.log" 
REM  robocopy  "%appdata%\SQL Developer"        "%bkup_folder%\appdata\SQL Developer"     /E /V /NP /R:0 /W:5  /LOG+:"%bkup_folder%\40_SQL Developer.log" 
robocopy  "%appdata%\SQLDeveloper"         "%bkup_folder%\appdata\SQLDeveloper"      /E /V /NP /R:0 /W:5  /LOG+:"%bkup_folder%\40_SQLDeveloper.log" 


mkdir     %USERPROFILE%\Desktop\registry

regedit   /e   "%USERPROFILE%\Desktop\registry\putty.reg"                 "HKEY_CURRENT_USER\Software\SimonTatham"
regedit   /e   "%USERPROFILE%\Desktop\registry\SuperPutty.reg"            "HKEY_CURRENT_USER\Software\Martin Prikryl"
regedit   /e   "%USERPROFILE%\Desktop\registry\Winmerge.reg"              "HKEY_CURRENT_USER\Software\Thingamahoochie"
regedit   /e   "%USERPROFILE%\Desktop\registry\Excel_Security.reg"        "HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\Excel\Security"
regedit   /e   "%USERPROFILE%\Desktop\registry\Excel_File_MRU.reg"        "HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\Excel\File MRU"
regedit   /e   "%USERPROFILE%\Desktop\registry\Excel_Place_MRU.reg"       "HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\Excel\Place MRU"
regedit   /e   "%USERPROFILE%\Desktop\registry\Excel_User_MRU.reg"        "HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\Excel\User MRU"
regedit   /e   "%USERPROFILE%\Desktop\registry\Access_User_MRU.reg"       "HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\Access\User MRU"
regedit   /e   "%USERPROFILE%\Desktop\registry\OneNote_CustomTages.reg"   "HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\OneNote\Custom NoteTags"
regedit   /e   "%USERPROFILE%\Desktop\registry\OneNote_OpenNotes.reg"     "HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\OneNote\OpenNotebooks"
regedit   /e   "%USERPROFILE%\Desktop\registry\OneNote_RecentNotes.reg"   "HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\OneNote\RecentNotebooks"
regedit   /e   "%USERPROFILE%\Desktop\registry\OneNote_PlacesMRU.reg"     "HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\OneNote\Place MRU"
regedit   /e   "%USERPROFILE%\Desktop\registry\OneNote_UserMRU.reg"       "HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\OneNote\User MRU"
regedit   /e   "%USERPROFILE%\Desktop\registry\PowerPoint_Options.reg"    "HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\PowerPoint\Options"
regedit   /e   "%USERPROFILE%\Desktop\registry\PowerPoint_FileMRU.reg"    "HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\PowerPoint\File MRU"
regedit   /e   "%USERPROFILE%\Desktop\registry\PowerPoint_PlacesMRU.reg"  "HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\PowerPoint\Place MRU"
regedit   /e   "%USERPROFILE%\Desktop\registry\PowerPoint_UserMRU.reg"    "HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\PowerPoint\User MRU"
regedit   /e   "%USERPROFILE%\Desktop\registry\Visio_recent_tmplts.reg"   "HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\Visio\Recent Templates"
regedit   /e   "%USERPROFILE%\Desktop\registry\Visio_UserMRU.reg"         "HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\Visio\User MRU"
regedit   /e   "%USERPROFILE%\Desktop\registry\Word_Options.reg"          "HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\Word\Options"
regedit   /e   "%USERPROFILE%\Desktop\registry\Word_FileMRU.reg"          "HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\Word\File MRU"
regedit   /e   "%USERPROFILE%\Desktop\registry\Word_PlaceMRU.reg"         "HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\Word\Place MRU"
regedit   /e   "%USERPROFILE%\Desktop\registry\Word_UserMRU.reg"          "HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\Word\User MRU"


move   "%USERPROFILE%\Desktop\registry"     %bkup_folder%
