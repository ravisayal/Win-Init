REM   Choco Installation
REM   Logfile %ProgramData%/chocolatey\logs\choco.summary.log

choco install    chocolatey-core.extension -y
choco install    7zip.install -y
choco install    putty.install -y
choco install    mtputty -y
choco install    notepadplusplus -y
choco install    autohotkey -y
choco install    paint.net -y
choco install    winmerge -y
choco install    googlechrome -y
choco install    firefox -y
choco install    textpad -y
choco install    git.install -y
choco install    winscp -y
REM   choco install    superputty -y
choco install    tortoisesvn -y
choco install    TortoiseGit -y
choco install    puretext -y
choco install    greenshot -y
choco install    sharex -y
choco install    caffeine -y
choco install    vscode -y
choco install    powertoys -y

REM   JDK Installation 
REM   This below isntalls both 32 and 64 bit versions
choco install    jdk8 -params "both=true" --force  -y
REM   choco install    jdk8 -y
REM   choco install eclipse-java-oxygen


choco install    microsoft-windows-terminal

REM  Web App tools
choco install    python3 -y
choco install    awscli -y
choco install    nodejs -y
choco install    fiddler4 -y
choco install    curl -y
choco install    wget -y

REM  Linux Sub Systems 
choco install    msys2
REM choco install    cygwin -y
REM choco install    cyg-get -y
REM  cyg-get rsync
REM  cyg-get rdiff
REM  cyg-get rdiff-backup


REM   choco install    foxitreader -y
REM   choco install    foxitreader --version 5.1.4 -y

REM  Media Softwares/Utilities
choco install    mpc-hc -y
choco install    k-litecodecpackfull -y
choco install    audacity -y
choco install    vlc -y
choco install    handbrake -y
choco install    imagemagick -y

REM  Remote Access
choco install    anydesk -y
REM   choco install    teamviewer -y
REM   choco install    teamviewer.host -y
choco install    tightvnc -y

REM KeyBoard/Mouse Tools
choco install    inputdirector -y

REM  Virtual Box
REM  choco install    virtualbox 
choco install    virtualbox --version=5.2.18 -y


choco install    sysinternals -y
choco install    PDFCreator  -y
choco install    foxitereader -y


REM Privacy tools
choco install    tor-browser -y
choco install    gpg4win-vanilla -y
choco install    openvpn  -y

REM File Disk Utils 
choco install    teracopy -y

REM USB Tools
choco install    etcher -y 
choco install    rufus -y 

REM  IOT Tools
choco install    arduino -y

REM  Microsoft Tools
choco install    microsoft-windows-terminal --pre
choco install    visualstudio2019buildtools

REM Google tools
choco install    google-drive-file-stream -y
choco install    androidstudio

