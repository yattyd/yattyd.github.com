---
layout: default
title: "SQLite学习手册(数据表和视图)"
tag: "C"
categories: "Training"
---

# {{ page.title }}


SQLite学习手册(数据表和视图)


<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>

<div class="posthead">
	<h2>
	
	SQLite学习手册(数据表和视图) </h2>
	
			
		</div>
<div class="postbody">
	<div id="cnblogs_post_body">
		<span style="color: #ff0000;"><strong><span style="font-size: 14pt;">
		一、创建数据表:</span></strong></span><p>&nbsp;&nbsp; 
		&nbsp;该命令的语法规则和使用方式与大多数关系型数据库基本相同，因此我们还是以示例的方式来演示SQLite中创建表的各种规则。但是对于一些SQLite特有的规则，我们会给予额外的说明。注：以下所有示例均是在sqlite自带命令行工具中完成的。<br>
		&nbsp;&nbsp; &nbsp;1). 最简单的数据表：<br>
		&nbsp;&nbsp; &nbsp;<span style="color: #0000ff;">sqlite&gt; <strong>CREATE TABLE</strong> 
		testtable (first_col integer);</span><br>
		&nbsp;&nbsp; &nbsp;这里需要说明的是，对于自定义数据表表名，如testtable，不能以sqlite_开头，因为以该前缀定义的表名都用于sqlite内部。 
		<br>
		<br>
		&nbsp;&nbsp; &nbsp;2). 创建带有缺省值的数据表：<br>
		&nbsp;&nbsp; &nbsp;<span style="color: #0000ff;">sqlite&gt; <strong>CREATE TABLE</strong> 
		testtable (first_col integer <strong>DEFAULT</strong> 0, second_col 
		varchar <strong>DEFAULT</strong> 'hello');</span><br>
		<br>
		&nbsp;&nbsp; &nbsp;3). 在指定数据库创建表：<br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; <strong>ATTACH DATABASE</strong> 
		'd:/mydb.db' <strong>AS</strong> mydb;</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; <strong>CREATE TABLE</strong> 
		mydb.testtable (first_col integer);</span><br>
		&nbsp;&nbsp; &nbsp;这里先通过ATTACH 
		DATABASE命令将一个已经存在的数据库文件attach到当前的连接中，之后再通过指定数据库名的方式在目标数据库中创建数据表，如 
		mydb.testtable。关于该规则还需要给出一些额外的说明，如果我们在创建数据表时没有指定数据库名，那么将会在当前连接的main数据库中创建该表，在一个连接中只能有一个main数据库。如果需要创建临时表，就无需指定数据库名，见如下示例：<br>
		<em><span style="color: #008000;">&nbsp;&nbsp; &nbsp;--创建两个表，一个临时表和普通表。</span></em><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; <strong>CREATE TEMP TABLE</strong> 
		temptable(first_col integer);</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; <strong>CREATE TABLE</strong> 
		testtable (first_col integer);&nbsp;&nbsp; &nbsp;</span><br>
		<em><span style="color: #008000;">&nbsp;&nbsp; &nbsp;--将当前连接中的缓存数据导出到本地文件，同时退出当前连接。</span></em><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; <strong>.backup</strong> d:/mydb.db</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; <strong>.exit</strong></span><br>
		<em><span style="color: #008000;">&nbsp;&nbsp; &nbsp;--重新建立sqlite的连接，并将刚刚导出的数据库作为主库重新导入。</span></em><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; <strong>.restore</strong> d:/mydb.db</span><br>
		<em><span style="color: #008000;">&nbsp;&nbsp; 
		&nbsp;--查看该数据库中的表信息，通过结果可以看出临时表并没有被持久化到数据库文件中。</span></em><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; <strong>.tables</strong></span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;testtable</span>&nbsp;&nbsp;&nbsp; <br>
		<br>
		&nbsp;&nbsp; &nbsp;4). &quot;IF NOT EXISTS&quot;从句：<br>
		&nbsp;&nbsp; &nbsp;如果当前创建的数据表名已经存在，即与已经存在的表名、视图名和索引名冲突，那么本次创建操作将失败并报错。然而如果在创建表时加上&quot;IF 
		NOT EXISTS&quot;从句，那么本次创建操作将不会有任何影响，即不会有错误抛出，除非当前的表名和某一索引名冲突。<br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; <strong>CREATE TABLE</strong> 
		testtable (first_col integer);</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;Error: table testtable already exists</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; <strong>CREATE TABLE IF NOT 
		EXISTS</strong> testtable (first_col integer);</span><br>
		<br>
		&nbsp;&nbsp; &nbsp;5). CREATE TABLE ... AS SELECT：<br>
		&nbsp;&nbsp; 
		&nbsp;通过该方式创建的数据表将与SELECT查询返回的结果集具有相同的Schema信息，但是不包含缺省值和主键等约束信息。然而新创建的表将会包含结果集返回的所有数据。<br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; <strong>CREATE TABLE</strong> 
		testtable2 <strong>AS SELECT</strong> * <strong>FROM</strong> 
		testtable;&nbsp;&nbsp; &nbsp;</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; <strong>.schema</strong> 
		testtable2</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;CREATE TABLE testtable2(first_col 
		INT);</span><br>
		&nbsp;&nbsp; &nbsp;.schema命令是sqlite3命令行工具的内置命令，用于显示当前数据表的CREATE TABLE语句。&nbsp;&nbsp;&nbsp; <br>
		<br>
		&nbsp;&nbsp; &nbsp;6). 主键约束：<br>
		<em><span style="color: #008000;">&nbsp;&nbsp; &nbsp;--直接在字段的定义上指定主键。</span></em><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; <strong>CREATE TABLE</strong> 
		testtable (first_col integer <strong>PRIMARY KEY ASC</strong>);</span><br>
		<em><span style="color: #008000;">&nbsp;&nbsp; 
		&nbsp;--在所有字段已经定义完毕后，再定义表的数约束，这里定义的是基于first_col和second_col的联合主键。</span></em><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; <strong>CREATE TABLE</strong> 
		testtable2 (</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; ...&gt; &nbsp;&nbsp; &nbsp;first_col integer, </span>
		<br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; ...&gt; &nbsp;&nbsp; &nbsp;second_col integer,</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; ...&gt; &nbsp;&nbsp; &nbsp;<strong>PRIMARY KEY</strong> 
		(first_col,second_col)</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; ...&gt; );</span><br>
		&nbsp;&nbsp; &nbsp;和其他关系型数据库一样，主键必须是唯一的。<br>
		<br>
		&nbsp;&nbsp; &nbsp;7). 唯一性约束：<br>
		<em><span style="color: #008000;">&nbsp;&nbsp; &nbsp;--直接在字段的定义上指定唯一性约束。</span></em><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; <strong>CREATE TABLE</strong> 
		testtable (first_col integer <strong>UNIQUE</strong>);</span><br>
		<em><span style="color: #008000;">&nbsp;&nbsp; 
		&nbsp;--在所有字段已经定义完毕后，在定义表的唯一性约束，这里定义的是基于两个列的唯一性约束。</span></em><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; <strong>CREATE TABLE</strong> 
		testtable2 (</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; ...&gt;&nbsp;&nbsp;&nbsp;&nbsp; first_col integer,</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; ...&gt;&nbsp;&nbsp;&nbsp;&nbsp; second_col integer,</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; ...&gt;&nbsp;&nbsp;&nbsp;&nbsp; <strong>UNIQUE</strong> 
		(first_col,second_col)</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; ...&gt; );&nbsp;&nbsp; &nbsp;</span><br>
		&nbsp;&nbsp; &nbsp;在SQLite中，NULL值被视为和其他任何值都是不同的，这样包括和其他的NULL值，如下例：<br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; DELETE FROM testtable;</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; SELECT count(*) FROM 
		testtable;</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;count(*)</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;----------</span><br>
		<strong><span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;0</span></strong><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; INSERT INTO testtable VALUES(<strong>NULL</strong>);</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; INSERT INTO testtable VALUES(<strong>NULL</strong>);</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; SELECT count(*) FROM 
		testtable;</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;count(*)</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;----------</span><br>
		<strong><span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;2&nbsp;&nbsp; &nbsp;</span></strong><br>
		&nbsp;&nbsp; &nbsp;由此可见，两次插入的NULL值均插入成功。<br>
		<br>
		&nbsp;&nbsp; &nbsp;8). 为空(NOT NULL)约束：<br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; <strong>CREATE TABLE</strong> 
		testtable(first_col integer <strong>NOT NULL</strong>);</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; INSERT INTO testtable 
		VALUES(NULL);</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;Error: testtable.first_col may not be 
		NULL</span><br>
		&nbsp;&nbsp; &nbsp;从输出结果可以看出，first_col已经被定义了非空约束，因此不能在插入NULL值了。&nbsp;&nbsp;&nbsp; <br>
		<br>
		&nbsp;&nbsp; &nbsp;9). 检查性约束：<br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; <strong>CREATE TABLE</strong> 
		testtable (first_col integer <strong>CHECK</strong> (first_col &lt; 5));</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; INSERT INTO testtable 
		VALUES(4);</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; INSERT INTO testtable 
		VALUES(20); <span style="color: #008000;"><em>-- 
		20违反了字段first_col的检查性约束(first_col &lt; 5)</em></span></span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;Error: constraint failed</span><br>
		&nbsp;&nbsp; &nbsp;--和之前的其它约束一样，检查性约束也是可以基于表中的多个列来定义的。&nbsp;&nbsp; &nbsp;<br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; <strong>CREATE TABLE</strong> 
		testtable2 (</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; ...&gt;&nbsp;&nbsp;&nbsp;&nbsp; first_col integer,</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; ...&gt;&nbsp;&nbsp;&nbsp;&nbsp; second_col integer,</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; ...&gt;&nbsp;&nbsp;&nbsp;&nbsp; <strong>CHECK</strong> 
		(first_col &gt; 0 <strong>AND</strong> second_col &lt; 0)</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; ...&gt; );</span><br>
		<br>
		<span style="font-size: 14pt;"><strong><span style="color: #ff0000;">
		二、表的修改：</span></strong></span><br>
		<br>
		&nbsp;&nbsp; &nbsp;SQLite对ALTER 
		TABLE命令支持的非常有限，仅仅是修改表名和添加新字段。其它的功能，如重命名字段、删除字段和添加删除约束等均为提供支持。<br>
		&nbsp;&nbsp; &nbsp;1). 修改表名：<br>
		&nbsp;&nbsp; 
		&nbsp;需要先说明的是，SQLite中表名的修改只能在同一个数据库中，不能将其移动到Attached数据库中。再有就是一旦表名被修改后，该表已存在的索引将不会受到影响，然而依赖该表的视图和触发器将不得不重新修改其定义。<br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; CREATE TABLE testtable 
		(first_col integer);</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; <strong>ALTER TABLE</strong> 
		testtable <strong>RENAME TO</strong> testtable2;</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; <strong>.tables</strong></span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;testtable2&nbsp;</span>&nbsp; &nbsp;<br>
		&nbsp;&nbsp; &nbsp;通过.tables命令的输出可以看出，表testtable已经被修改为testtable2。&nbsp;&nbsp;&nbsp; <br>
		<br>
		&nbsp;&nbsp; &nbsp;2). 新增字段：<br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; CREATE TABLE testtable 
		(first_col integer);</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; <strong>ALTER TABLE</strong> 
		testtable <strong>ADD COLUMN</strong> second_col integer;</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; <strong>.schema</strong> 
		testtable</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;CREATE TABLE &quot;testtable&quot; (first_col 
		integer, second_col integer);&nbsp;&nbsp;</span> &nbsp;<br>
		&nbsp;&nbsp; &nbsp;通过.schema命令的输出可以看出，表testtable的定义中已经包含了新增字段。&nbsp;&nbsp;&nbsp; <br>
		&nbsp;&nbsp; &nbsp;<em><span style="color: #008000;">关于ALTER 
		TABLE最后需要说明的是，在SQLite中该命令的执行时间是不会受到当前表行数的影响，也就是说，修改有一千万行数据的表和修改只有一条数据的表所需的时间几乎是相等的。</span></em><br>
		&nbsp;&nbsp;&nbsp; <br>
		<span style="font-size: 14pt;"><strong><span style="color: #ff0000;">
		三、表的删除：</span></strong></span><br>
		<br>
		&nbsp;&nbsp; 
		&nbsp;在SQLite中如果某个表被删除了，那么与之相关的索引和触发器也会被随之删除。在很多其他的关系型数据库中是不可以这样的，如果必须要删除相关对象，只能在删除表语句中加入WITH 
		CASCADE从句。见如下示例：<br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; CREATE TABLE testtable 
		(first_col integer);</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; <strong>DROP TABLE</strong> 
		testtable;</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; <strong>DROP TABLE</strong> 
		testtable;</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;Error: no such table: testtable</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; <strong>DROP TABLE IF EXISTS</strong> 
		testtable;</span>&nbsp;&nbsp; &nbsp;<br>
		&nbsp;&nbsp; &nbsp;从上面的示例中可以看出，如果删除的表不存在，SQLite将会报错并输出错误信息。如果希望在执行时不抛出异常，我们可以添加IF 
		EXISTS从句，该从句的语义和CREATE TABLE中的完全相同。<br>
		&nbsp;&nbsp; &nbsp;<br>
		<span style="font-size: 14pt;"><strong><span style="color: #ff0000;">
		四、创建视图：</span></strong></span><br>
		<br>
		&nbsp;&nbsp; &nbsp;我们这里只是给出简单的SQL命令示例，具体的含义和技术细节可以参照上面的创建数据表部分，如临时视图、&quot;IF NOT 
		EXISTS&quot;从句等。<br>
		&nbsp;&nbsp; &nbsp;1). 最简单的视图：<br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; <strong>CREATE VIEW</strong> 
		testview <strong>AS</strong> SELECT * FROM testtable WHERE first_col &gt; 
		100;&nbsp;&nbsp; &nbsp;</span><br>
		&nbsp;&nbsp; &nbsp;<br>
		&nbsp;&nbsp; &nbsp;2). 创建临时视图：<br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; <strong>CREATE TEMP VIEW</strong> 
		tempview <strong>AS</strong> SELECT * FROM testtable WHERE first_col &gt; 
		100;</span><br>
		&nbsp;&nbsp; &nbsp;<br>
		&nbsp;&nbsp; &nbsp;3). &quot;IF NOT EXISTS&quot;从句：<br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; <strong>CREATE VIEW</strong> 
		testview <strong>AS</strong> SELECT * FROM testtable WHERE first_col &gt; 
		100;</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;Error: table testview already exists</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; <strong>CREATE VIEW IF NOT 
		EXISTS</strong> testview <strong>AS</strong> SELECT * FROM testtable 
		WHERE first_col &gt; 100;</span><br>
		&nbsp;&nbsp;&nbsp; <br>
		<span style="font-size: 14pt;"><strong><span style="color: #ff0000;">
		五、删除视图：</span></strong></span><br>
		<br>
		&nbsp;&nbsp; &nbsp;该操作的语法和删除表基本相同，因此这里只是给出示例：<br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; <strong>DROP VIEW</strong> 
		testview;</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; <strong>DROP VIEW</strong> 
		testview;</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;Error: no such view: testview</span><br>
		<span style="color: #0000ff;">&nbsp;&nbsp; &nbsp;sqlite&gt; <strong>DROP VIEW IF EXISTS</strong> 
		testview;&nbsp;</span>&nbsp;&nbsp; &nbsp;</div>
</div>
