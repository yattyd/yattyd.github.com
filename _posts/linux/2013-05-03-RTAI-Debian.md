---
layout: default
title: "基于Debian/Ubuntu的操作系统下安装RTAI"
tag: "Linux"
categories: "Driver"
---

# {{ page.title }}


基于Debian/Ubuntu的操作系统下安装RTAI

## 描述：

这篇文章介绍的是如何在基于Debian/Ubuntu的操作系统下安装RTAI(Real-Time Application Interface),将Debian/Ubuntu打包成
实时的操作系统
安装之前先检查系统的配置，当前配置是Ubuntu 11.04,Linux内核版本是Linux 2.6.38
终端上输入uname -a
检查gcc与g++的版本，在终端上输入gcc –version,与g++ -version,当前版本采用的gcc与g++分别是gcc 4.5.2 , gcc 4.5.2
切换到根用户权限sudo –u
最新的RTAi是3.9，当前系统所要安装的RTAI版本为3..5,rtai3.5已经为Linux 2.6.19内核版本设计了补丁。为了获得这个软件，首
先需要转入/usr/src
cd /usr/src
现在开始获取rtai的压缩文件
在终端上输入
Wget –no-check-certificate  www .rtai.org/RTAI/rtai-3.5.tar.bz2
开始获取相应的rtai的压缩文件
获取完成后，对压缩文件进行相应的解压
tar xvf rtai-3.5.tar.bz2
RTAI3.5支持的最新版本的内核为Linux-2.6.19,强烈不推荐使用以前的内核版本。在这里下载一个Linux-2.6.19来构建自已的内核
。为了获取Linux-2.6.19在终端上输入
cd /usr/src
然后从官网上获取Linux-2.6.19.tar.gz
wget www .kernel.org/pub/linux/kernel/v2.6/linux-2.6.19.tar.gz
下载完成后，解压内核源码
tar xvf linux-2.6.19.tar.gz
现在给Linux打上RTAI补丁
进入linux-2.6.19目录
cd linux-2.6.19
输入：
patch –p1 –b< ../rtai-3.5/base/arch/i386/patches/hal-linux-2.6.19-i386-1.7-01.patch
即可完成打补丁

## 配置内核

保存当前的内核配置文件
cd /usr/src/linux-2.6.19
cp /boot/config-2.6.19-generic .config
然后开始配置Linux
输入make menuconfig
将会显示一个内核配置菜单
在菜单上选择Load an Alternate Configuration File,并输入我们刚才保存的.config
此时我们已经加载了默认的Linux配置
配置如下:
Code maturity level options-> 不选
General Setup->
Support for paging of anonymous memory(swap)选
System V IPC选
BSD Process Accounting选
Loadable Module Support ->
选上Automatic kernel module loading
Processor type and features->
选上Math emulation
去掉Use register arguments
选上Compact VDSO support
Power management options->
Button改成M
Fan改成M
Processor改成M
Thermal Zone改成M
Kernel Hacking –>
去掉Compile the kernel with frame pointers
以上配置应该能工作在任何配置了X86CPU的计算机中，这个配置将会产生一个1.396MB的vmlinuz压缩内核文件和一个
initrd.img-2.6.19
对于Ubuntu来说安安装内核的最好的方式是创建一个*.deb的安装文件，因些需要安装一些相应的软件包
在终端上输入
apt-get install kernel-package fakeroot
在终端上输入
make–kpkg clean
make–kpkg --initrd –append-to-version kernel_image kernel_headers
编译的过程中可能会出现这个脚本的错误/scripts/mod/submission.c
在其里面添加#define PATH_MAX 1024即可
遇到#elif错误，打开相应的文件，将最后一个#elif改成#else即可
这个编译阶段的时间就非常的长，要耐心等待，先去吃饭~~~
编译完成之后在终端上输入
cd /usr/src
输入ls
可以看到多了两个相应的安装包，后缀名为*.deb
在终端上输入
dpkg –i *.deb,安装编译的内核
在dpkg完成了安装之后，会在系统的引导程序grub里面填加相应的入口，打开grub.cfg会发现增加了一个新的入口linux-2.6.19-
rtai
现在已经安装完成，重新启动Ubuntu,在Grub菜单中选择
Previous Linux Version
再选择
Ubuntu, With Linux 2.6.19-rtai
现在配置RTAI
以上步骤完成后，现在启动新内核，进入rtai-3.5文件夹
cd /usr/src/rtai-3.5
mkdir build
cd build

## 配置RTAI

make –f ../makefile
General->Installation directory –Leave the default as /usr/realtime
General->Linux Build Tree –The path to configured kernel /usr/src/linux-2.6.19
退出，开始安装RTAI
Make install
现在重新启动计算机，带上新内核。

想学习黑客技术 一直以来没有找到好的方法，最近发现一个地方还不错 推荐一个黑客网站 www.hack6.com Q-Q:283422135 可以联系15625253078  
详情可了解：http://www.baidu.com/link?url=l7 ... VdiDzJBcokQ2gH6MFpv
