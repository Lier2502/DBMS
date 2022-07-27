Microsoft Windows [Version 10.0.19044.1645]
(c) Microsoft Corporation. All rights reserved.

C:\windows\system32>C:\Program Files\MySQL\MySQL Server 8.0\bin
'C:\Program' is not recognized as an internal or external command,
operable program or batch file.

C:\windows\system32>cd C:\Program Files\MySQL\MySQL Server 8.0\bin

C:\Program Files\MySQL\MySQL Server 8.0\bin>mysql -u root -p
Enter password: **********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 14
Server version: 8.0.30 MySQL Community Server - GPL

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.00 sec)

mysql> create database library;
Query OK, 1 row affected (0.01 sec)

mysql> use library;
Database changed
mysql> create table book_info(book_id int, Name varchar(30), Author varchar(30), price float); 
Query OK, 0 rows affected (0.02 sec)

mysql> insert into book_info values(23, "How to be a great Engineer","Ramesh Patil", 100.00);
Query OK, 1 row affected (0.01 sec)

mysql> insert into book_info(book_id, Name) values(34, "Science of studying");
Query OK, 1 row affected (0.01 sec)

mysql> insert into book_info values(12, "How World works", "Ram Pawar", 56.45), (21, "Theory of unexpected", "Laxman Nayadu", 36.47), (15, "Purpose of living", "Bharat Sahani", 120.50);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from book_info;
+---------+----------------------------+---------------+-------+
| book_id | Name                       | Author        | price |
+---------+----------------------------+---------------+-------+
|      23 | How to be a great Engineer | Ramesh Patil  |   100 |
|      34 | Science of studying        | NULL          |  NULL |
|      12 | How World works            | Ram Pawar     | 56.45 |
|      21 | Theory of unexpected       | Laxman Nayadu | 36.47 |
|      15 | Purpose of living          | Bharat Sahani | 120.5 |
+---------+----------------------------+---------------+-------+
5 rows in set (0.00 sec)

mysql> select * from book_info where price<100;
+---------+----------------------+---------------+-------+
| book_id | Name                 | Author        | price |
+---------+----------------------+---------------+-------+
|      12 | How World works      | Ram Pawar     | 56.45 |
|      21 | Theory of unexpected | Laxman Nayadu | 36.47 |
+---------+----------------------+---------------+-------+
2 rows in set (0.01 sec)

mysql> select * from book_info order by book_id;
+---------+----------------------------+---------------+-------+
| book_id | Name                       | Author        | price |
+---------+----------------------------+---------------+-------+
|      12 | How World works            | Ram Pawar     | 56.45 |
|      15 | Purpose of living          | Bharat Sahani | 120.5 |
|      21 | Theory of unexpected       | Laxman Nayadu | 36.47 |
|      23 | How to be a great Engineer | Ramesh Patil  |   100 |
|      34 | Science of studying        | NULL          |  NULL |
+---------+----------------------------+---------------+-------+
5 rows in set (0.00 sec)

mysql> select * from book_info order by book_id desc;
+---------+----------------------------+---------------+-------+
| book_id | Name                       | Author        | price |
+---------+----------------------------+---------------+-------+
|      34 | Science of studying        | NULL          |  NULL |
|      23 | How to be a great Engineer | Ramesh Patil  |   100 |
|      21 | Theory of unexpected       | Laxman Nayadu | 36.47 |
|      15 | Purpose of living          | Bharat Sahani | 120.5 |
|      12 | How World works            | Ram Pawar     | 56.45 |
+---------+----------------------------+---------------+-------+
5 rows in set (0.00 sec)

mysql> alter table book_info add column publication varchar(20);
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from book_info;
+---------+----------------------------+---------------+-------+-------------+
| book_id | Name                       | Author        | price | publication |
+---------+----------------------------+---------------+-------+-------------+
|      23 | How to be a great Engineer | Ramesh Patil  |   100 | NULL        |
|      34 | Science of studying        | NULL          |  NULL | NULL        |
|      12 | How World works            | Ram Pawar     | 56.45 | NULL        |
|      21 | Theory of unexpected       | Laxman Nayadu | 36.47 | NULL        |
|      15 | Purpose of living          | Bharat Sahani | 120.5 | NULL        |
+---------+----------------------------+---------------+-------+-------------+
5 rows in set (0.00 sec)

mysql> alter table book_info drop column publication;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from book_info;
+---------+----------------------------+---------------+-------+
| book_id | Name                       | Author        | price |
+---------+----------------------------+---------------+-------+
|      23 | How to be a great Engineer | Ramesh Patil  |   100 |
|      34 | Science of studying        | NULL          |  NULL |
|      12 | How World works            | Ram Pawar     | 56.45 |
|      21 | Theory of unexpected       | Laxman Nayadu | 36.47 |
|      15 | Purpose of living          | Bharat Sahani | 120.5 |
+---------+----------------------------+---------------+-------+
5 rows in set (0.00 sec)

mysql> alter table book_info modify column book_id int;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table book_info rename column Name to Book_Name;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from book_info;
+---------+----------------------------+---------------+-------+
| book_id | Book_Name                  | Author        | price |
+---------+----------------------------+---------------+-------+
|      23 | How to be a great Engineer | Ramesh Patil  |   100 |
|      34 | Science of studying        | NULL          |  NULL |
|      12 | How World works            | Ram Pawar     | 56.45 |
|      21 | Theory of unexpected       | Laxman Nayadu | 36.47 |
|      15 | Purpose of living          | Bharat Sahani | 120.5 |
+---------+----------------------------+---------------+-------+
5 rows in set (0.00 sec)

mysql> create table random_table(id int);
Query OK, 0 rows affected (0.02 sec)

mysql> insert into random_table values(1);
Query OK, 1 row affected (0.00 sec)

mysql> select * from random_table;
+------+
| id   |
+------+
|    1 |
+------+
1 row in set (0.00 sec)

mysql> drop table random_table;
Query OK, 0 rows affected (0.01 sec)

mysql> select * from random_table;
ERROR 1146 (42S02): Table 'library.random_table' doesn't exist
mysql> end
 
