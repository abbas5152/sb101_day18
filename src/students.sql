mysql> create table students(rollnumber int,name varchar(20),standard varchar(20),grade int);
Query OK, 0 rows affected (0.07 sec)

mysql> insert into students  values(1,"abbas","9th",9);
Query OK, 1 row affected (0.02 sec)

mysql> insert into students  values(2,"jay","11th",8);
Query OK, 1 row affected (0.01 sec)

mysql> insert into students  values(3,"parth","11th",7);
Query OK, 1 row affected (0.01 sec)

mysql> insert into students  values(4,"par","11th",6);
Query OK, 1 row affected (0.02 sec)

mysql> insert into students  values(5,"paro","12th",5);
Query OK, 1 row affected (0.01 sec)

mysql> insert into students  values(6,"parno","12th",4);
Query OK, 1 row affected (0.02 sec)

mysql> insert into students  values(7,"pno","12th",3);
Query OK, 1 row affected (0.01 sec)

mysql> insert into students  values(8,"puno","7th",2);
Query OK, 1 row affected (0.01 sec)

mysql> insert into students  values(9,"punom","7th",1);
Query OK, 1 row affected (0.01 sec)

mysql> insert into students  values(10,"pugnom","8th",0);
Query OK, 1 row affected (0.02 sec)

mysql> select * from students;
+------------+--------+----------+-------+
| rollnumber | name   | standard | grade |
+------------+--------+----------+-------+
|          1 | abbas  | 9th      |     9 |
|          2 | jay    | 11th     |     8 |
|          3 | parth  | 11th     |     7 |
|          4 | par    | 11th     |     6 |
|          5 | paro   | 12th     |     5 |
|          6 | parno  | 12th     |     4 |
|          7 | pno    | 12th     |     3 |
|          8 | puno   | 7th      |     2 |
|          9 | punom  | 7th      |     1 |
|         10 | pugnom | 8th      |     0 |
+------------+--------+----------+-------+
10 rows in set (0.00 sec)

mysql> SELECT * FROM students ORDER BY grade ASC;
+------------+--------+----------+-------+
| rollnumber | name   | standard | grade |
+------------+--------+----------+-------+
|         10 | pugnom | 8th      |     0 |
|          9 | punom  | 7th      |     1 |
|          8 | puno   | 7th      |     2 |
|          7 | pno    | 12th     |     3 |
|          6 | parno  | 12th     |     4 |
|          5 | paro   | 12th     |     5 |
|          4 | par    | 11th     |     6 |
|          3 | parth  | 11th     |     7 |
|          2 | jay    | 11th     |     8 |
|          1 | abbas  | 9th      |     9 |
+------------+--------+----------+-------+
10 rows in set (0.01 sec)

mysql>SELECT TOP 10 percent * FROM students order by grade desc;
+------------+-------+----------+-------+
| rollnumber | name  | standard | grade |
+------------+-------+----------+-------+
|          1 | abbas | 9th      |     9 |
+------------+-------+----------+-------+
1 row in set (0.00 sec)