# Putty Settings Import/Export
To Export PuTTY Settings and Sessions
```
 regedit /e "%USERPROFILE%\Desktop\putty.reg" HKEY_CURRENT_USER\Software\SimonTatham
``` 
To import just import the *.reg file


> to mute beep

Replace `"Beep"=dword:00000001`

with 
`"Beep"=dword:00000000`
