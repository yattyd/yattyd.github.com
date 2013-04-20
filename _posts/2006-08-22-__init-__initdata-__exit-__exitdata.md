---
layout: default
date: 2006-08-16
title: ??__init?__initdata?__exit?__exitdata?????
---

# {{ page.title }}


<html xmlns:v="urn:schemas-microsoft-com:vml"
xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:w="urn:schemas-microsoft-com:office:word"
xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=Content-Type content="text/html; charset=gb2312">
<meta name=ProgId content=Word.Document>
<meta name=Generator content="Microsoft Word 11">
<meta name=Originator content="Microsoft Word 11">
<link rel=File-List
href="关于__init、__initdata和__exit、__exitdata的学习笔记_files/filelist.xml">
<title>关于__init、__initdata和__exit、__exitdata的学习笔记 作者：tekkamanninja</title>
<!--[if gte mso 9]><xml>
 <o:DocumentProperties>
  <o:Author>User</o:Author>
  <o:LastAuthor>User</o:LastAuthor>
  <o:Revision>2</o:Revision>
  <o:TotalTime>1</o:TotalTime>
  <o:Created>2013-03-11T14:51:00Z</o:Created>
  <o:LastSaved>2013-03-11T14:51:00Z</o:LastSaved>
  <o:Pages>1</o:Pages>
  <o:Words>222</o:Words>
  <o:Characters>1272</o:Characters>
  <o:Company>HOME</o:Company>
  <o:Lines>10</o:Lines>
  <o:Paragraphs>2</o:Paragraphs>
  <o:CharactersWithSpaces>1492</o:CharactersWithSpaces>
  <o:Version>11.5606</o:Version>
 </o:DocumentProperties>
</xml><![endif]--><!--[if gte mso 9]><xml>
 <w:WordDocument>
  <w:SpellingState>Clean</w:SpellingState>
  <w:GrammarState>Clean</w:GrammarState>
  <w:PunctuationKerning/>
  <w:DrawingGridVerticalSpacing>7.8 pt</w:DrawingGridVerticalSpacing>
  <w:DisplayHorizontalDrawingGridEvery>0</w:DisplayHorizontalDrawingGridEvery>
  <w:DisplayVerticalDrawingGridEvery>2</w:DisplayVerticalDrawingGridEvery>
  <w:ValidateAgainstSchemas/>
  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>
  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>
  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>
  <w:Compatibility>
   <w:SpaceForUL/>
   <w:BalanceSingleByteDoubleByteWidth/>
   <w:DoNotLeaveBackslashAlone/>
   <w:ULTrailSpace/>
   <w:DoNotExpandShiftReturn/>
   <w:AdjustLineHeightInTable/>
   <w:BreakWrappedTables/>
   <w:SnapToGridInCell/>
   <w:WrapTextWithPunct/>
   <w:UseAsianBreakRules/>
   <w:DontGrowAutofit/>
   <w:UseFELayout/>
  </w:Compatibility>
  <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>
 </w:WordDocument>
</xml><![endif]--><!--[if gte mso 9]><xml>
 <w:LatentStyles DefLockedState="false" LatentStyleCount="156">
 </w:LatentStyles>
</xml><![endif]-->
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:宋体;
	panose-1:2 1 6 0 3 1 1 1 1 1;
	mso-font-alt:SimSun;
	mso-font-charset:134;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:3 135135232 16 0 262145 0;}
@font-face
	{font-family:"\@宋体";
	panose-1:2 1 6 0 3 1 1 1 1 1;
	mso-font-charset:134;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:3 135135232 16 0 262145 0;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{mso-style-parent:"";
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	mso-pagination:none;
	font-size:10.5pt;
	mso-bidi-font-size:12.0pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:宋体;
	mso-font-kerning:1.0pt;}
a:link, span.MsoHyperlink
	{color:blue;
	text-decoration:underline;
	text-underline:single;}
a:visited, span.MsoHyperlinkFollowed
	{color:purple;
	text-decoration:underline;
	text-underline:single;}
p
	{mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	mso-pagination:widow-orphan;
	font-size:12.0pt;
	font-family:宋体;
	mso-bidi-font-family:宋体;}
span.apple-style-span
	{mso-style-name:apple-style-span;}
span.SpellE
	{mso-style-name:"";
	mso-spl-e:yes;}
 /* Page Definitions */
 @page
	{mso-page-border-surround-header:no;
	mso-page-border-surround-footer:no;}
@page Section1
	{size:595.3pt 841.9pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;
	mso-header-margin:42.55pt;
	mso-footer-margin:49.6pt;
	mso-paper-source:0;
	layout-grid:15.6pt;}
div.Section1
	{page:Section1;}
 /* List Definitions */
 @list l0
	{mso-list-id:198052820;
	mso-list-template-ids:-619431944;}
@list l0:level1
	{mso-level-tab-stop:36.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1
	{mso-list-id:2074503727;
	mso-list-template-ids:-1573107752;}
@list l1:level1
	{mso-level-tab-stop:36.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
-->
</style>
<!--[if gte mso 10]>
<style>
 /* Style Definitions */
 table.MsoNormalTable
	{mso-style-name:"Table Normal";
	mso-tstyle-rowband-size:0;
	mso-tstyle-colband-size:0;
	mso-style-noshow:yes;
	mso-style-parent:"";
	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;
	mso-para-margin:0cm;
	mso-para-margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:10.0pt;
	font-family:"Times New Roman";
	mso-ansi-language:#0400;
	mso-fareast-language:#0400;
	mso-bidi-language:#0400;}
</style>
<![endif]--><!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext="edit" spidmax="2050"/>
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext="edit">
  <o:idmap v:ext="edit" data="1"/>
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=ZH-CN link=blue vlink=purple style='tab-interval:21.0pt;text-justify-trim:
punctuation'>

<div class=Section1 style='layout-grid:15.6pt'>

<p class=MsoNormal align=left style='mso-margin-top-alt:auto;mso-margin-bottom-alt:
auto;text-align:left;mso-pagination:widow-orphan'><span lang=EN-US
style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:
0pt'><a href="http://blog.chinaunix.net/uid-20543672-id-2985620.html"><span
lang=EN-US><span lang=EN-US>关于__init</span></span><span lang=EN-US><span
lang=EN-US>、__initdata</span></span><span lang=EN-US><span lang=EN-US>和__exit</span></span><span
lang=EN-US><span lang=EN-US>、__exitdata</span></span><span lang=EN-US><span
lang=EN-US>的学习笔记</span></span></a> </span><span style='font-size:12.0pt;
font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt'>作者：<span
lang=EN-US><a href="http://blog.chinaunix.net/uid/20543672.html">tekkamanninja</a><o:p></o:p></span></span></p>

<p class=MsoNormal align=left style='text-align:left;mso-pagination:widow-orphan'><span
style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:
0pt'>由于<span lang=EN-US>4</span>年前对于<span lang=EN-US>C</span>语言和<span
lang=EN-US>Linux</span>的知识贫乏，所以当时对于模块中的函数定义没有细看。这次在温习《<span lang=EN-US>LDD3</span>》的时候，重新看了一下关于<span
lang=EN-US>__init</span>、<span lang=EN-US>__<span class=SpellE>initdata</span></span>和<span
lang=EN-US>__exit</span>、<span lang=EN-US>__<span class=SpellE>exitdata</span></span>的知识，记录如下：<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal align=left style='text-align:left;mso-pagination:widow-orphan'><span
lang=EN-US style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;
mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal align=left style='text-align:left;mso-pagination:widow-orphan'><span
style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:
0pt'>对于<span lang=EN-US>__init</span>、<span lang=EN-US>__<span class=SpellE>initdata</span></span>和<span
lang=EN-US>__exit</span>、<span lang=EN-US>__<span class=SpellE>exitdata</span></span>的定义位于</span><span
lang=EN-US style='font-size:13.5pt;font-family:宋体;mso-bidi-font-family:宋体;
color:#F00000;mso-font-kerning:0pt'>&lt;<span class=SpellE>linux/init.h</span>&gt;</span><span
lang=EN-US style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;
mso-font-kerning:0pt'>,</span><span style='font-size:12.0pt;font-family:宋体;
mso-bidi-font-family:宋体;mso-font-kerning:0pt'>这些宏定义的作用是告诉编译器将这些函数或者数据放入相应的<span
lang=EN-US>section</span>中，而在模块加载的阶段，<span lang=EN-US>.<span class=SpellE>ko</span></span>文件中的代码和数据的加载区域是根据<span
lang=EN-US>section</span>来加载的。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal align=left style='text-align:left;mso-pagination:widow-orphan'><span
lang=EN-US style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;
mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal align=left style='text-align:left;mso-pagination:widow-orphan'><span
style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:
0pt'>比如：如果函数的定义中带有<span lang=EN-US>__init</span>，那么这个函数的所有代码会被放入<span
lang=EN-US>.<span class=SpellE>init.text</span></span>的<span lang=EN-US>section</span>中。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal align=left style='text-align:left;mso-pagination:widow-orphan'><span
lang=EN-US style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;
mso-font-kerning:0pt'>&nbsp; &nbsp; &nbsp; </span><span style='font-size:12.0pt;
font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt'>如果函数的定义中带有<span
lang=EN-US>__<span class=SpellE>initdata</span></span>，那么这个函数的所有代码会被放入<span
lang=EN-US>.<span class=SpellE>init.data</span></span>的<span lang=EN-US>section</span>中。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal align=left style='text-align:left;mso-pagination:widow-orphan'><span
lang=EN-US style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;
mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal align=left style='text-align:left;mso-pagination:widow-orphan'><span
lang=EN-US style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;
mso-font-kerning:0pt'>&nbsp; &nbsp; </span><span style='font-size:12.0pt;
font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt'>之所以要使用这个宏定义，其中一个原因是标记为初始化的函数和数据<span
lang=EN-US>,</span>表明该函数和数据仅在初始化期间使用。在模块装载之后，模块装载就会将初始化函数扔掉。这样可以将该函数占用的内存释放出来。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal align=left style='text-align:left;mso-pagination:widow-orphan'><span
lang=EN-US style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;
mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal align=left style='text-align:left;mso-pagination:widow-orphan'><span
style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:
0pt'>这种释放根据是否编译进内核是有区别的：<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal align=left style='text-align:left;mso-pagination:widow-orphan'><span
style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:
0pt'>（<span lang=EN-US>1</span>）模块编译进内核：所有的初始化数据和函数都是在系统启动的最后阶段，在所有模块都初始化完成以后被内核统一释放的。所有你一般可以在内核启动信息的后面看到：<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal align=left style='text-align:left;mso-pagination:widow-orphan'><span
lang=EN-US style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;
mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>

<ol start=1 type=1>
 <li class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;
     text-align:left;mso-pagination:widow-orphan;mso-list:l0 level1 lfo1;
     tab-stops:list 36.0pt'><span lang=EN-US style='font-size:12.0pt;
     font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt'>PHY: 0:01 - Link
     is Up - 100/Full<o:p></o:p></span></li>
 <li class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;
     text-align:left;mso-pagination:widow-orphan;mso-list:l0 level1 lfo1;
     tab-stops:list 36.0pt'><span lang=EN-US style='font-size:12.0pt;
     font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt'>VFS: Mounted
     root (<span class=SpellE>nfs</span> <span class=SpellE>filesystem</span>)
     on device 0:14.<o:p></o:p></span></li>
 <li class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;
     text-align:left;mso-pagination:widow-orphan;mso-list:l0 level1 lfo1;
     tab-stops:list 36.0pt'><span class=SpellE><span lang=EN-US
     style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:
     0pt'>devtmpfs</span></span><span lang=EN-US style='font-size:12.0pt;
     font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt'>: mounted<o:p></o:p></span></li>
 <li class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;
     text-align:left;mso-pagination:widow-orphan;mso-list:l0 level1 lfo1;
     tab-stops:list 36.0pt'><b><span lang=EN-US style='font-size:13.5pt;
     font-family:宋体;mso-bidi-font-family:宋体;color:#F00000;mso-font-kerning:
     0pt'>Freeing init memory: 196K</span></b><span lang=EN-US
     style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:
     0pt'><o:p></o:p></span></li>
 <li class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;
     text-align:left;mso-pagination:widow-orphan;mso-list:l0 level1 lfo1;
     tab-stops:list 36.0pt'><span lang=EN-US style='font-size:12.0pt;
     font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt'>INIT: version
     2.86 booting<o:p></o:p></span></li>
</ol>

<p class=MsoNormal align=left style='text-align:left;mso-pagination:widow-orphan'><span
style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:
0pt'>（<span lang=EN-US>2</span>）独立的模块：模块</span><span style='font-size:10.0pt;
font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt'>是通过</span><span
lang=EN-US style='font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:宋体;
mso-bidi-font-family:宋体;mso-font-kerning:0pt'>module-init-tool</span><span
style='font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:宋体;mso-bidi-font-family:
宋体;mso-font-kerning:0pt'>中的<span class=SpellE><span lang=EN-US>insmod</span></span>的程序利用系统调用来挂载的，而所有的</span><span
style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:
0pt'>初始化数据和函数都是被这个系统调用所使用的，在模块挂载完成并初始化过后，由系统调用来完成对初始化数据和函数所占空间的释放。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal align=left style='text-align:left;mso-pagination:widow-orphan'><span
lang=EN-US style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;
mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal align=left style='text-align:left;mso-pagination:widow-orphan'><b><span
style='font-size:13.5pt;font-family:宋体;mso-bidi-font-family:宋体;color:#F00000;
mso-font-kerning:0pt'>所以对于将内核驱动代码中的函数和数据定义为<span lang=EN-US>“</span>初始化<span
lang=EN-US>”</span>时需要注意：不要将驱动定义的文件方法（如<span lang=EN-US> open</span>、<span
lang=EN-US>read</span>、<span lang=EN-US>write</span>、<span lang=EN-US>close</span>）或者驱动在实际工作中需要使用的函数和数据定义为<span
lang=EN-US>“</span>初始化<span lang=EN-US>”</span>属性，因为在驱动初始化后这些东东就已经被释放了，如果使用了就会<span
lang=EN-US>Oops</span>。</span></b><span lang=EN-US style='font-size:12.0pt;
font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt'><o:p></o:p></span></p>

<p class=MsoNormal align=left style='text-align:left;mso-pagination:widow-orphan'><span
lang=EN-US style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;
mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal align=left style='text-align:left;mso-pagination:widow-orphan'><span
style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:
0pt'>有些网上的文章中写到：<span lang=EN-US><o:p></o:p></span></span></p>

<ol start=1 type=1>
 <li class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;
     text-align:left;mso-pagination:widow-orphan;mso-list:l1 level1 lfo2;
     tab-stops:list 36.0pt'><span lang=EN-US style='font-size:12.0pt;
     font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt'>__init</span><span
     style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:
     0pt'>宏使内建模块中的<span lang=EN-US>init</span>函数在执行完成后释放掉，不过可装载的模块不受影响。<span
     lang=EN-US><o:p></o:p></span></span></li>
</ol>

<p class=MsoNormal align=left style='text-align:left;mso-pagination:widow-orphan'><span
style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:
0pt'>这个是</span><b><span style='font-size:13.5pt;font-family:宋体;mso-bidi-font-family:
宋体;color:#F00000;mso-font-kerning:0pt'>错误</span></b><span style='font-size:
12.0pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt'>的，这些<span
lang=EN-US>“</span>初始化<span lang=EN-US>”</span>宏同样影响可装载模块。从模块装载的系统调用源码中你可以找到释放的地方，他释放的是整个<span
lang=EN-US>“</span>初始化<span lang=EN-US>”section</span>。具体的情况请参考</span><span
style='font-size:6.5pt;mso-bidi-font-size:12.0pt;font-family:宋体;mso-bidi-font-family:
宋体;mso-font-kerning:0pt'>《深入<span lang=EN-US>Linux</span>内核构架》的《第七章 模块》</span><span
lang=EN-US style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;
mso-font-kerning:0pt'><o:p></o:p></span></p>

<p class=MsoNormal align=left style='text-align:left;mso-pagination:widow-orphan'><span
lang=EN-US style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;
mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal align=left style='text-align:left;mso-pagination:widow-orphan'><span
style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:
0pt'>从代码上可以证明<span lang=EN-US>“</span>初始化<span lang=EN-US>”</span>宏同样影响可装载模块，从实验中同样可以，实验步骤：<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal align=left style='text-align:left;mso-pagination:widow-orphan'><span
style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:
0pt'>（<span lang=EN-US>1</span>）在一个简单的字符驱动中定义一个<span lang=EN-US>“</span>初始化<span
lang=EN-US>”</span>字符串，并在模块初始化时打印出来。在驱动的其他方法中也试图打印这个字符串，如果这个方法被系统调用执行了，那么你就得到了一个<span
lang=EN-US>Oops</span>。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal align=left style='text-align:left;mso-pagination:widow-orphan'><span
style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:
0pt'>（<span lang=EN-US>2</span>）去掉这个字符串定义时的<span lang=EN-US>“</span>初始化<span
lang=EN-US>”</span>宏，再做一边实验，字符串依然可以被打印出来。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal><span lang=EN-US><o:p>&nbsp;</o:p></span></p>

</div>

</body>

</html>
