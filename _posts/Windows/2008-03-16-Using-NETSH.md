---
layout: default
title: Using NETSH command 
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

### nx.bat

    rem net use ?
    net use * /delete /yes
    net use x: \\192.168.1.101\pub foo /USER:bar /PERSISTENT:NO
    net use x: \\192.168.1.102\pub foo /USER:bar /PERSISTENT:NO
    pause 
    
### nx-vbox.bat
    subst   a: /D
    subst   b: /D
    subst   a: \\Vboxsvr\my_pub 
    subst   b: \\Vboxsvr\pub
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
    

 
