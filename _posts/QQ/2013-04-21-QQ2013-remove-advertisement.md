---
layout: default
title: QQ2013 去广告 
---

# {{ page.title }}

### 教程

- qq2013最新版去广告教程 <http://jingyan.baidu.com/article/b87fe19edb86d852183568a2.html>
- QQ2013如何去广告？ <http://jingyan.baidu.com/article/48b37f8d40b6c71a646488cf.html>
- [Reference scripts](#scripts)

-----------------------------------------------

### QQ本地下载

- [QQ视频桌面版 (老年人适用)][202]
- MD5: 34c0648abd669fd1e08536c1b84de004 *QQVideoDesktop1.0final.exe

  [202]: /Downloads/QQ/QQVideoDesktop1.0final.exe    "QQVideoDesktop1.0final.exe"

-----------------------------------------------
### QQ官方下载

- QQ2013 新春版 <http://dldir1.qq.com/qqfile/qq/QQ2013/2013Beta2/8056/QQ2013Beta2.exe>
- QQ视频桌面版(Senior 适用) <http://dldir1.qq.com/qqfile/qqvideo/QQVideoDesktop1.0final.exe>
- 所有版本 <http://im.qq.com/qq/all.shtml>
 
-----------------------------------------------

<p id="scripts"></p>
### Scripts

#### rm-adv.bat

    REM replace 1234567890 with your QQ number
    set QQ_NUM=123456780
    del %appdata%\Tencent\Users\%QQ_NUM%\QQ\Misc.db
    mkdir %appdata%\Tencent\Users\%QQ_NUM%\QQ\Misc.db 
    dir %appdata%\Tencent\Users\%QQ_NUM%\QQ\
    pause    

#### rm-adv2.bat
    REM Ensure that all QQ instances are NOT running
    REM set your QQ installation directory, "E:\bin" for example
    REM set PROG_INST=%ProgramFiles%
    set PROG_INST=E:\bin
    rem del %PROG_INST%\Tencent\QQ\Plugin\Com.Tencent.Advertisement\Bundle.rdb
    copy NUL %PROG_INST%\Tencent\QQ\Plugin\Com.Tencent.Advertisement\Bundle.rdb
    pause
    
