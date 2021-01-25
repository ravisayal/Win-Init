# REM  @@ Backup Script
# REM - Run with Powershell

$bkup_folder="D:\xbackup"
Start-Transcript -path $bkup_folder\10_program_list_from_Win32Product_list.txt -append
Get-WmiObject -Class Win32_Product | select name, version, caption, vendor
Stop-Transcript


Start-Transcript -path $bkup_folder\10_program_list_from_reg.txt -append
$InstalledSoftware = Get-ChildItem "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall"
foreach($obj in $InstalledSoftware){write-host $obj.GetValue('DisplayName') -NoNewline; write-host " - " -NoNewline; write-host $obj.GetValue('DisplayVersion')}
Stop-Transcript

exit
