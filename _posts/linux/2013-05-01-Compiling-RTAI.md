---
layout: default
date: 2013-05-01
title: Linux内核系统编译安装RTAI
tag: "Linux"
categories: "Driver"
---

# {{ page.title }}

Linux内核系统编译安装RTAI

<http://os.51cto.com/art/201002/182336.htm>

Linux内核系统的编译使电脑更好更强大，Linux内核安装RTAI完成后，新建一个空文件，输入以下代码。 
Linux内核能提高计算机的使用性能。下面就这就来讲术Linux内核系统编译。

## 1、下载Linux内核

<ftp://ftp.kernel.org/pub/linux/kernel/v2.6/linux-2.6.29.4.tar.bz2>

## 2、下载最新RTAI实时Linux内核

<https://www.rtai.org/RTAI/rtai-3.7.1.tar.bz2>

## 3、重新编译Linux内核
	view plaincopy to clipboardprint?  
	$su    
	#cp linux-2.6.29.4.tar.bz2 rtai-3.7.1.tar.bz2 /usr/src    
	#tar jxvf linux-2.6.29.4.tar.bz2    
	#tar jxvf rtai-3.7.1.tar.bz2    
	#cd linux-2.6.29.4.tar.bz2    
	#patch -p1 -b < ../rtai-3.7.1/base/arch/x86/patches/hal-linux-2.6.29.4-x86-2.4-01.patch    
	#cp /boot/config-2.6.27.5-117.fc10.i686 ./.config    
	#make menuconfig    
	#make    
	#make modules_install install    
	$su  
	#cp linux-2.6.29.4.tar.bz2 rtai-3.7.1.tar.bz2 /usr/src  
	#tar jxvf linux-2.6.29.4.tar.bz2  
	#tar jxvf rtai-3.7.1.tar.bz2  
	#cd linux-2.6.29.4.tar.bz2  
	#patch -p1 -b < ../rtai-3.7.1/base/arch/x86/patches/hal-linux-2.6.29.4-x86-2.4-01.patch  
	#cp /boot/config-2.6.27.5-117.fc10.i686 ./.config  
	#make menuconfig  
	#make  
	#make modules_install install  
[注]在‘make menuconfig’这一步中的配置如下：
##4、编译安装RTAI
	view plaincopy to clipboardprint?    
	#cd rtai-3.7.1      
	#make menuconfig      
	#make       
	#make install      
	#cd rtai-3.7.1    
	#make menuconfig    
	#make     
	#make install     
Linux内核安装RTAI完成后，新建一个空文件，输入以下代码
	view plaincopy to clipboardprint?  
	#!/bin/bash     
	mkdir /dev/rtf     
	for n in `seq 0 9`     
	do    
	f=/dev/rtf/$n     
	mknod -m 666 $f c 150 $n     
	done    
	#!/bin/bash  
	mkdir /dev/rtf  
	for n in `seq 0 9`  
	do  
	f=/dev/rtf/$n  
	mknod -m 666 $f c 150 $n  
	done  
将代码保存为rt_script.
	view plaincopy to clipboardprint?  
	#chmod +x rt_script    
	#./rt_script    
	#chmod +x rt_script  
	#./rt_script  
将下面脚本保存为start_rt
	view plaincopy to clipboardprint?  
	#!/bin/bash     
	mknod -m 666 /dev/rtai_shm c 10 254     
	for n in `seq 0 9`     
	do    
	 f=/dev/rtf$n     
	mknod -m 666 $f c 150 $n     
	done    
	#!/bin/bash  
	mknod -m 666 /dev/rtai_shm c 10 254  
	for n in `seq 0 9`  
	do  
	f=/dev/rtf$n  
	mknod -m 666 $f c 150 $n  
	done  
然后存放在/etc/init.d/目录下view plaincopy to clipboardprint?

