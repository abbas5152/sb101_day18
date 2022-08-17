mysql> use db
Database changed
mysql> create table balance(name varchar(20),account_number(20) varchar(20),balance int);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(20) varchar(20),balance int)' at line 1
mysql> create table balance(name varchar(20),account_number varchar(20) varchar(20),bal int);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'varchar(20),bal int)' at line 1
mysql> create table balance(name varchar(20),accountnumber varchar(20) varchar(20),bal int);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'varchar(20),bal int)' at line 1
mysql> create table balance(name varchar(20),accountnumber varchar(20),bal int);
Query OK, 0 rows affected (0.08 sec)

mysql> insert into balance values("ram","ac-12123",50000);
Query OK, 1 row affected (0.02 sec)

mysql> insert into balance values("john","ac-w4123",60000);
Query OK, 1 row affected (0.16 sec)

mysql> insert into balance values("david","ac-23134",10000);
Query OK, 1 row affected (0.07 sec)

mysql> start transaction;UPDATE CustomersSET ContactName='Juan'WHERE Country='Mexico';
Query OK, 0 rows affected (0.00 sec)

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '='Juan'WHERE Country='Mexico'' at line 1
mysql> UPDATE CustomersSET ContactName='Juan'WHERE Country='Mexico';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '='Juan'WHERE Country='Mexico'' at line 1
mysql>  start transaction;UPDATE balance SET bal=50000 WHERE name="John";
Query OK, 0 rows affected (0.00 sec)

Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> ^c;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '^c' at line 1
mysql> select * from balance;
+-------+---------------+-------+
| name  | accountnumber | bal   |
+-------+---------------+-------+
| ram   | ac-12123      | 50000 |
| john  | ac-w4123      | 50000 |
| david | ac-23134      | 10000 |
+-------+---------------+-------+
3 rows in set (0.00 sec)

mysql> UPDATE balance SET bal=60000 WHERE name="John";
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from balance;
+-------+---------------+-------+
| name  | accountnumber | bal   |
+-------+---------------+-------+
| ram   | ac-12123      | 50000 |
| john  | ac-w4123      | 60000 |
| david | ac-23134      | 10000 |
+-------+---------------+-------+
3 rows in set (0.00 sec)

mysql>  start transaction;UPDATE balance SET bal=50000 WHERE name="John";UPDATE balance SET bal=20000 WHERE name="David";select * from balance;rollback;
Query OK, 0 rows affected (0.02 sec)

Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

+-------+---------------+-------+
| name  | accountnumber | bal   |
+-------+---------------+-------+
| ram   | ac-12123      | 50000 |
| john  | ac-w4123      | 50000 |
| david | ac-23134      | 20000 |
+-------+---------------+-------+
3 rows in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql>  start transaction;UPDATE balance SET bal=50000 WHERE name="John";UPDATE balance SET bal=20000 WHERE name="David";select * from balance;commit;
Query OK, 0 rows affected (0.00 sec)

Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

+-------+---------------+-------+
| name  | accountnumber | bal   |
+-------+---------------+-------+
| ram   | ac-12123      | 50000 |
| john  | ac-w4123      | 50000 |
| david | ac-23134      | 20000 |
+-------+---------------+-------+
3 rows in set (0.00 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> select * from balance;
+-------+---------------+-------+
| name  | accountnumber | bal   |
+-------+---------------+-------+
| ram   | ac-12123      | 50000 |
| john  | ac-w4123      | 50000 |
| david | ac-23134      | 20000 |
+-------+---------------+-------+
3 rows in set (0.00 sec)