---
layout: default
title: Using NETSH command 
---

# {{ page.title }}

### netsh-1.bat

    netsh interface ip set address name="Local Area Connection" static 192.168.1.101 255.255.255.0 192.168.1.1 1
    netsh set dns name="Local Area Connection" source=static addr=8.8.8.8 
    pause

### netsh-2.bat

    netsh interface ip set address name="Local Area Connection" static 192.168.2.101 255.255.255.0 192.168.2.1 1
    netsh set dns name="Local Area Connection" source=static addr=8.8.8.8 
    pause

 
