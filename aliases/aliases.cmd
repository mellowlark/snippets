@echo off
:: Doskey config commands
DOSKEY alias=doskey /macros
DOSKEY edal="C:\Program Files\Notepad++\notepad++.exe" %USERPROFILE%\dk.cmd
DOSKEY sb=C:\Users\jimmy\dk.cmd
DOSKEY ag=doskey /macros $B findstr /C:$*
:: Window's Commands
DOSKEY ls=dir /B
DOSKEY clear=cls
DOSKEY c=cls
DOSKEY e=exit
DOSKEY x=exit
DOSKEY mv=move $*
DOSKEY cp=copy $*
DOSKEY which=where $*
DOSKEY ipa=ipconfig $B findstr /C:Address

DOSKEY vi=vim $*
DOSKEY cds=cd %USERPROFILE%\.ssh
DOSKEY cdh=cd %USERPROFILE%
DOSKEY cdd=cd %USERPROFILE%\Desktop
DOSKEY npp="C:\Program Files\Notepad++\notepad++.exe" $*
DOSKEY locate=c:\programs\es.exe *$@*

:: Networking
DOSKEY ssc=ssh 192.168.1.18 -p 10052
DOSKEY ss1=192.168.1.18 -p 11002
DOSKEY ss2=192.168.1.18 -p 11012
DOSKEY sse=ssh 192.168.1.14 -p 21022
DOSKEY sst=ssh 192.168.1.14 -p 21122

:: VirtualBox
DOSKEY vbm="C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" $*
DOSKEY vbmla="C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" list vms $*
DOSKEY vbmlr="C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" list runningvms

:: Containerization
DOSKEY mkenv=doskey /macrofile=c:\users\jimmy\kubekeys
DOSKEY mk=minikube $*
DOSKEY kc=minikube kubectl -- $*
DOSKEY kubectll=minikube kubectl -- $*
