---
layout: default
title: "SQLite3 -- C 例程"
tag: "C"
categories: "Training"
---

# {{ page.title }}

SQLite3 -- C 例程

一个简单的使用实例：
	int main( int argc, char **argv )
	{
		sqlite3 *db;
		sqlite3_stmt * stmt;
		const char *zTail;

		//打开数据库
		int r = sqlite3_open("mysqlite.db",&db)
		if(r){
			printf("%s",sqlite3_errmsg(db));
		}

		//创建Table
		sqlite3_prepare(db,
			"CREATE TABLE players ( ID INTEGER PRIMARY KEY, name TEXT, age INTERER );",
			-1,&stmt,&zTail);
		sqlite3_step(stmt);
		sqlite3_finalize(stmt);

		//插入数据
		sqlite3_prepare(db,
			"INSERT INTO players (name,num) VALUES(?,?);",
			-1,&stmt,&zTail);

		char str[] = "Kevin";
		int n = 23;
		sqlite3_bind_text(stmt,1,str,-1,SQLITE_STATIC);
		sqlite3_bind_int(stmt,2,n);
		r = sqlite3_step(stmt);
		if( r!=SQLITE_DONE){
			printf("%s",sqlite3_errmsg(db));
		}
		sqlite3_reset(stmt);

		//插入第二个数据
		char str2[] = "Jack";
		int n2 = 16;
		sqlite3_bind_text(stmt,1,str2,-1,SQLITE_STATIC);
		sqlite3_bind_int(stmt,2,n2);
		r = sqltie3_step(stmt);
		if( r!=SQLITE_DONE){
			printf("%s",sqlite3_errmsg(db));
		}
		sqltie3_finalize(stmt);

		//查询所有数据
		sqlite3_prepare(db,
			"SELECT ID, name, num FROM players ORDER BY num;",
			-1,&stmt,&zTail);
		r = sqlite3_step(stmt);
		int number;
		int id;
		const unsigned char * name;
		while( r == SQLITE_ROW ){
			id = sqlite3_column_int( stmt, 0 );
			name = sqlite3_column_text( stmt,1 );
			number = sqlite3_column_int( stmt, 2 );
			printf("ID: %d  Name: %s  Age: %d \n",id,name,number);
			sqlite3_step(stmt);
		}
		sqlite3_finalize(stmt);

		//关闭数据库
		sqlite3_close(db);
		return 0;
	}

同时加上头文件#include <stdio.h> #icnlude <sqlite3.h> 编译运行gcc -o sample sample.c ./sample

结果如下：

ID:1 Name:Kevin Age:23

ID:2 Name:Jack Age:16

### 简要说明一下SQLite数据库执行SQL语句的过程

 调用sqlite3_prepare()将SQL语句编译为sqlite内部一个结构体(sqlite3_stmt).该结构体中包含了将要执行的的 SQL语句的信息.
 
 如果需要传入参数,在SQL语句中用'?'作为占位符,再调用sqlite3_bind_XXX()函数将对应的参数传入.
 
 调用sqlite3_step(),这时候SQL语句才真正执行.注意该函数的返回值,SQLITE_DONE和SQLITE_ROW都是表示执行成功, 不同的是SQLITE_DONE表示没有查询结果,象UPDATE,INSERT这些SQL语句都是返回SQLITE_DONE,SELECT查询语句在 查询结果不为空的时候返回SQLITE_ROW,在查询结果为空的时候返回SQLITE_DONE.
 
 每次调用sqlite3_step()的时候,只返回一行数据,使用sqlite3_column_XXX()函数来取出这些数据.要取出全部的数据需要 反复调用sqlite3_step(). (注意, 在bind参数的时候,参数列表的index从1开始,而取出数据的时候,列的index是从0开始).
 
 在SQL语句使用完了之后要调用sqlite3_finalize()来释放stmt占用的内存.该内存是在sqlite3_prepare()时分配的.
 
 如果SQL语句要重复使用,可以调用sqlite3_reset()来清楚已经绑定的参数.
  
