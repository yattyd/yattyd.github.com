---
layout: default
title: My favorite batch scripts
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
    

 
