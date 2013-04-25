---
layout: default
title: My favorite batch scripts
tag: "Win"
---

# {{ page.title }}

## Samples

### netsh-1.bat

    netsh interface ip set address name="Local Area Connection" static 192.168.1.101 255.255.255.0 192.168.1.1 1
    netsh set dns name="Local Area Connection" source=static addr=8.8.8.8 
    pause

### netsh-2.bat

    netsh interface ip set address name="Local Area Connection" static 192.168.2.101 255.255.255.0 192.168.2.1 1
    netsh set dns name="Local Area Connection" source=static addr=8.8.8.8 
    pause
    
### set-firewall.bat

    rem C:\Windows\System32\netsh.exe firewall set opmode disable
    rem C:\Windows\System32\netsh.exe firewall set opmode enable
    C:\Windows\System32\netsh advfirewall set allprofiles state off
    C:\Windows\System32\netsh advfirewall set allprofiles state on
    pause

### run-vs.bat

    REM Starts SlickEdit and creates a versioned Configuration
    REM Directory in the SlickEdit installation directory.
    set SlickEdit=c:\usr\bin\SlickEditV14.0.2
    start %SlickEdit%\win\vs.exe -sc %SlickEdit%\config\
    
### open-cygwin-here.reg

    Windows Registry Editor Version 5.00
    
    [HKEY_CLASSES_ROOT\Directory\shell\bash]
    @="Open Bash Shell Here"
    
    [HKEY_CLASSES_ROOT\Directory\shell\bash\command]
    @="c:\\cygwin\\bin\\bash.exe --login -i -c 'cd \"`cygpath \"$*\"`\";bash' bash %L"
    
    [HKEY_CLASSES_ROOT\Drive\shell\bash]
    @="Open Bash Shell Here"
    
    [HKEY_CLASSES_ROOT\Drive\shell\bash\command]
    @="c:\\cygwin\\bin\\bash.exe --login -i -c 'cd \"`cygpath \"$*\"`\";bash' bash %L"
    
    [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\shell\mintty_bash]
    @="Open MinTTY Bash Shell Here"
    
    [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\shell\mintty_bash\command]
    @="C:\\cygwin\\bin\\mintty.exe -e c:\\cygwin\\bin\\bash -c \"/bin/xhere /bin/bash.exe '%L'\""
    
### path-completion.reg
    
    Windows Registry Editor Version 5.00
    
    [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Command Processor]
    "AutoRun"=""
    "CompletionChar"=dword:00000009
    "PathCompletionChar"=dword:00000009

### remote-desktop-port.reg

    Windows Registry Editor Version 5.00
    
    [HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\TerminalServer\WinStations\RDP-Tcp\PortNumber]
    @="33089"

### search-win2k-style.reg

    Windows Registry Editor Version 5.00
    
    [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\CabinetState]
    "Use Search Asst"="0"
    
    [HKEY_CURRENT_USER\Control Panel\Desktop]
    "MenuShowDelay"="0"
    
    [HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics]
    "MinAnimate"="0"
            
### nx.bat

    REM net use ?
    REM user-name: bar; password: foo.
    net use * /delete /yes
    net use x: \\192.168.1.101\pub foo /USER:bar /PERSISTENT:NO
    net use y: \\192.168.1.102\pub foo /USER:bar /PERSISTENT:NO
    
    net share pub /DELETE
    net share pub=e:\pub
    net share tftpboot /DELETE
    net share tftpboot=e:\tftpboot
    pause 
    
### nx-vbox.bat
    subst   a: /D
    subst   b: /D
    subst   a: \\Vboxsvr\my_pub 
    subst   b: \\Vboxsvr\pub
    pause 

### ln-s.bat

    copy .\bin\SysinternalsSuite\junction.exe c:\windows
    junction.exe -d c:\usr 
    junction.exe -d c:\home
    junction.exe -d c:\tmp
    junction.exe -d c:\opt\d
    junction.exe -d c:\opt
    junction.exe -d c:\tftpboot
    junction.exe -d c:\pub
    
    mkdir c:\d
    
    junction.exe c:\usr         e:\usr
    junction.exe c:\opt         e:\opt
    junction.exe c:\home        e:\home
    junction.exe c:\tmp         e:\tmp
    junction.exe c:\tftpboot    e:\tftpboot
    junction.exe c:\pub         e:\pub
    pause

### right_click_menu_add.bat

    reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\shell\dos" /f
    reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\shell\cygwin_mintty" /f
    reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\shell\cygwin" /f
    pause
    
    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\shell\dos" /ve /d DOS-Prompt(^&Y) /f
    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\shell\dos\command" /ve /d "cmd.exe /k cd %%1" /f
    pause

## Usage
    
    Usage: netsh [-a AliasFile] [-c Context] [-r RemoteMachine] 
                 [Command | -f ScriptFile]
    
    The following commands are available:
    
    Commands in this context:
    ?              - Displays a list of commands.
    add            - Adds a configuration entry to a list of entries.
    bridge         - Changes to the `netsh bridge' context.
    delete         - Deletes a configuration entry from a list of entries.
    diag           - Changes to the `netsh diag' context.
    dump           - Displays a configuration script.
    exec           - Runs a script file.
    firewall       - Changes to the `netsh firewall' context.
    help           - Displays a list of commands.
    interface      - Changes to the `netsh interface' context.
    lan            - Changes to the `netsh lan' context.
    ras            - Changes to the `netsh ras' context.
    routing        - Changes to the `netsh routing' context.
    set            - Updates configuration settings.
    show           - Displays information.
    winsock        - Changes to the `netsh winsock' context.
    
    The following sub-contexts are available:
     bridge diag firewall interface lan ras routing winsock
    
    To view help for a command, type the command, followed by a space, and then
     type ?.
    

 
    