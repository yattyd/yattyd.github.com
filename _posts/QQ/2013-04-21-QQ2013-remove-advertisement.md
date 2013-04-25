---
layout: default
title: "QQ2013 去广告"
tag: "IM" 
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

    @echo off
    REM replace 1234567890 with your QQ number
    REM 把下面一行的 1234567890 换成你自己的qq号码
    set QQ_NUM=123456780
    
    REM echo 请输入QQ号码 (Please enter your QQ id):
    REM for /f  %%i in ('read.exe -d') do set QQ_NUM=%%i
    REM echo Your QQ ID is ``%QQ_NUM%``
    
    del "%appdata%\Tencent\Users\%QQ_NUM%\QQ\Misc.db"
    mkdir "%appdata%\Tencent\Users\%QQ_NUM%\QQ\Misc.db" 
    dir "%appdata%\Tencent\Users\%QQ_NUM%\QQ\"
    pause   
     

- [下载][203]
- [read.exe][2031]
- <a href="#read">read.c</a>

  [203]:  /Downloads/QQ/rm-adv.bat    "rm-adv.bat"
  [2031]: /Downloads/QQ/read.exe      "read.exe"
  
#### rm-adv2.bat
    REM Ensure that all QQ instances are NOT running
    REM set your QQ installation directory, "E:\bin" for example
    REM set PROG_INST=E:\bin
    
    set PROG_INST=%ProgramFiles%
    rem del "%PROG_INST%\Tencent\QQ\Plugin\Com.Tencent.Advertisement\Bundle.rdb"
    copy NUL "%PROG_INST%\Tencent\QQ\Plugin\Com.Tencent.Advertisement\Bundle.rdb"
    pause
    
- [下载][204]

  [204]: /Downloads/QQ/rm-adv2.bat    "rm-adv2.bat"

<a name="read"></a>
#### read.c
    /* compiling: tcc read.c -o read.exe */
    #include <stdio.h>     
    #include <string.h>
    int main(int argc, char **argv)
    {
    	char line[1024], *p;
    	fgets(line, 1024, stdin);
    	if (line == NULL) {return -1;}
    	p = strstr(line, "\r\n");
    	if (p != NULL) {*p = '\0';}
    	printf(line);
    	return 0;
    }


#### rm-adv3.c
    #include <stdlib.h>     
    #include <stdio.h>     
    #include <string.h>     
    #include <unistd.h>
         
    int readline(char *line, int siz)
    {
    	char *p;
    	
    	fgets(line, siz, stdin);
    	for (p=line; *p; ++p) {
    	        if (*p == '\r' || *p == '\n') {
    			*p = '\0';
    			break;		
    		}
    	}	
    	return 0;
    } 
     
    int main(int argc, char **argv)
    {
    	int err;
    	char cmdline[256], path[256], qq[32];
    	char *appdata = getenv("APPDATA");  
    
    	printf("Your QQ number:");
    	readline(qq, sizeof(qq));
    	
    	snprintf(path, sizeof(path), 
    		"\"%s\\Tencent\\Users\\%s\\QQ\\Misc.db\"", 
    		appdata, qq);
    	{
    		snprintf(cmdline, sizeof(cmdline), "del %s", path);
    		printf("%s\n", cmdline);
    		system(cmdline);
    	}
    	{
    		snprintf(cmdline, sizeof(cmdline), "mkdir %s", path);
    		printf("%s\n", cmdline);
    		system(cmdline);
    	}
    	//err = unlink(cmdline);
    	//printf("err=%d\n", err);
    	//mkdir(cmdline);	
    		     
    	return 0;
    }
    
- [下载][205]

  [205]: /Downloads/QQ/rm-adv3.7z    "rm-adv3"

- [Tiny CC][501]
  
  [501] http://www.tinycc.org/    "tinyc"
  
  