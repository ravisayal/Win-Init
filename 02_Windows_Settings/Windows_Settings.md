# Windows Settings and Preferences

## Windows Command Prompt -- enable extensions
To check if command extensions are enabled check the following registry key
```
c:\> reg query "HKEY_LOCAL_MACHINE\Software\Microsoft\Command Processor" 
    
    HKEY_LOCAL_MACHINE\Software\Microsoft\Command Processor
    CompletionChar    REG_DWORD    0x9
    DefaultColor    REG_DWORD    0x0
    EnableExtensions    REG_DWORD    0x1
    PathCompletionChar    REG_DWORD    0x9

c:\> reg query "HKEY_LOCAL_MACHINE\Software\Microsoft\Command Processor" /v EnableExtensions
    
    EnableExtensions    REG_DWORD    0x1
```

## Create ShortCut/Junction for mapping Virtual Box folder
```
mklink /d "c:\VMShared" "\\vboxsvr\VMshared"
```

