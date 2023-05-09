# SQL

# Table of Content
- [Introduction](#introduction)
- [Data Definition](#data-definition)
- [Syntax](#sql-syntax)
- [Commands](#sql-commands)


# <a id="introduction"></a>Introduction 
SQL (Structured Query Language) is a standard database programming language used for accessing and manipulating data in a database.
SQL is a standard language for storing, manipulating and retrieving data in databases.
SQL is the standard language for Relation Database System.

    - SQL can execute queries against a database
    - SQL can retrieve data from a database
    - SQL can insert records in a database
    - SQL can update records in a database
    - SQL can delete records from a database
    - SQL can create new databases
    - SQL can create new tables in a database
    - SQL can create stored procedures in a database
    - SQL can create views in a database
    - SQL can set permissions on tables, procedures, and views

RDBMS stands for Relational Database Management System.
RDBMS is the basis for SQL.
The data in RDBMS is stored in database objects called tables. A table is a collection of related data entries and it consists of columns and rows.

A database most often contains one or more tables. Each table is identified by a name. Tables contain records (rows) with data.

Basic related terminologies:
- Relation: In general, a relation is a table, i.e., data is arranged in rows and columns. A relation has the following properties:
      
      - In any given column of a table, all the items are of the same kind, whereas items in different columns may not be of the same kind.
      - For a row, each column must have an atomic value, and also for a row, a column cannot have more than one value.
      - All rows of a relation are distinct.
      - The ordering of rows in a relationship is immaterial.
      - The column of a relation are assigned distinct names, and the ordering of these columns is immaterial.

- Tuple: The rows of tables in a relationship are generally termed as Tuples.
- Attributes: The columns or fields of a table is termed as Attributes.
- Degree: The number of attributes in a relation determines the degree of relation. 
- Cardinality: The number of tuples or rows in a relation is termed as cardinality.

# <a id="data-definition"></a>Data Definition
Data types in SQL defines a sort of value that a database table column can contain. In a database table, each column is required to have a data type with a name.

## Data Types
There are three main data types: string, numeric, date and time

### String data types
This domain allows the representation of single characters or strings.
The length of the strings of characters can be fixed or variable; for strings of variable length, the maximum length is indicated.

- CHAR(size)
- VARCHAR(size)
- BINARY(size)
- VARBINARY(size)
- TEXT(size)
- SET(val1, val2, val3)

| Data Type | Description |
| :-----------: | :-----------: |
| **CHAR(size)** | A FIXED length string (can contain letters, numbers, and special characters). The size parameter specifies the column length in characters - can be from 0 to 255. Default is 1  |
| **VARCHAR(size)**  | A VARIABLE length string (can contain letters, numbers, and special characters). The size parameter specifies the maximum column length in characters - can be from 0 to 65535  |
| **BINARY(size)** | Equal to CHAR(), but stores binary byte strings. The size parameter specifies the column length in bytes. Default is 1 |
| **VARBINARY(size)** | Equal to VARCHAR(), but stores binary byte strings. The size parameter specifies the maximum column length in bytes. |
| **TEXT(size)** | Holds a string with a maximum length of 65,535 bytes |
| **SET(val1, val2, val3, ...)** | A string object that can have 0 or more values, chosen from a list of possible values. You can list up to 64 values in a SET list |

### Numeric data types
This domain contains numeric data types
The domain bit is typically used to represent attributes, known as flags, which specify whether an object has or has not a certain property.

- BIT(size)
- BOOL or BOOLEAN
- SMALLINT(size)
- INT or INTEGER(size)
- FLOAT(size, d)
- DOUBLE PRECISION(size, d)
- DEC or DECIMAL(size, d)
- NUMERIC
- REAL

| Data Type | Description |
| :-----------: | :-----------: |
| **BIT(size)** | A bit-value type. The number of bits per value is specified in size. The size parameter can hold a value from 1 to 64. The default value for size is 1. |
| **BOOL or BOOLEAN** | Zero is considered as false, nonzero values are considered as true. |
| **SMALLINT(size)** | A small integer. Signed range is from -32768 to 32767. Unsigned range is from 0 to 65535. The size parameter specifies the maximum display width (which is 255) |
| **INT or INTEGER** | A medium integer. Signed range is from -2147483648 to 2147483647. Unsigned range is from 0 to 4294967295. The size parameter specifies the maximum display width (which is 255) |
| **FLOAT(size, d)** | A floating point number. The total number of digits is specified in size. The number of digits after the decimal point is specified in the d parameter. |
| **DOUBLE PRECISION(size, d)** |  |
| **DEC or DECIMAL(size, d)** | An exact fixed-point number. The total number of digits is specified in size. The number of digits after the decimal point is specified in the d parameter. The maximum number for size is 65. The maximum number for d is 30. The default value for size is 10. The default value for d is 0. |
| **NUMERIC** |  |
| **REAL** |  |

### Date and Time data types
To offer specific support to the management of temporal information, which is very important in many applications.

- DATE
- TIME(fsp)
- DATETIME(fsp)
- TIMESTAMP(fsp)

Each of these domains can be structured in fields.
The domain date allows the fields year, month and day, the domain time allows the fields hour, minute and second, and timestamp allows all the fields, from year to second.

| Data Type | Description |
| :-----------: | :-----------: |
| **DATE** | A date. Format: YYYY-MM-DD. The supported range is from '1000-01-01' to '9999-12-31' |
| **TIME** | A time. Format: hh:mm:ss. The supported range is from '-838:59:59' to '838:59:59' |
| **DATETIME** | A date and time combination. Format: YYYY-MM-DD hh:mm:ss. The supported range is from '1000-01-01 00:00:00' to '9999-12-31 23:59:59'. |
| **TIMESTAMP** | A timestamp. TIMESTAMP values are stored as the number of seconds since the Unix epoch ('1970-01-01 00:00:00' UTC). Format: YYYY-MM-DD hh:mm:ss. |

## Schema Definition
SQL makes it possible to define a database schema as a collection of objects; each schema consists of a set of domains, tables,2 indices, assertions, views and privileges, defined by the following syntax:

```SQL
    CREATE SCHEMA [SchemaName] [[authorization] Authorization]
                      {SchemaElementDefinition}
```

Authorization represents the name of the user who owns the schema. If the term is omitted, it is assumed that the user who issued the command is the owner.
The name of the schema can be omitted and, in this case, the name of the owner is adopted as the name of the schema.
After the create schema command, the user can define the schema components.
It is not necessary for all the components to be defined at the same time as the schema is created: this can take place in several successive phases.

## Table Definition
An SQL table consists of an ordered set of attributes and of a (possibly empty)
set of constraints.

Each table is defined by giving its name and the definition of its attributes; each attribute, in turn, has a name and domain and possibly a set of constraints, which must be satisfied by the attribute values.
Once all the attributes have been defined, we can then define the constraints that involve more than one attribute of the table.
A table is initially empty and the creator holds all the privileges regarding the table, that is, the rights to access and to modify the data.

## User-defined Domains
- CREATE DOMAIN

```SQL
CREATE DOMAIN DomainName as ElementaryDomain
        [DefaultValue]
        [Constraints]
```

A domain is thus characterized by its own name, by an elementary domain (which can be predefined or previously user-defined), by a possible default value, and finally by a (possibly empty) set of constraints that represent the conditions that must be satisfied by legal domain values.

## Default Domain Values
- DefaultValue

This term specifies the value that the attribute must assume when a row is inserted into the table without a value being specified for the attribute itself.
When a default value is not specified, the value null is assumed as default.

- GenericValue

Represents a value that is compatible with the domain, provided as a constant or, more generally, defined as the result of the evaluation of an expression.

## SQL Database

### Create Database Statement
The CREATE DATABASE statement is used to create a new SQL database.

```SQL
CREATE DATABASE databasename;
```

Once a database is created, you can check it in the list of databases with the following SQL command: SHOW DATABASES;

### Drop Database Statement
The DROP DATABASE statement is used to drop an existing SQL database.

```SQL
DROP DATABASE databasename;
```

### Backup Database Statement
The BACKUP DATABASE statement is used in SQL Server to create a full back up of an existing SQL database.

```SQL
BACKUP DATABASE databasename
TO DISK = 'filepath'; 
```

A differential back up only backs up the parts of the database that have changed since the last full database backup.

```SQL
BACKUP DATABASE databasename
TO DISK = 'filepath'; 
WITH DIFFERENTIAL
```

### Create Table Statement
The CREATE TABLE statement is used to create a new table in a database.

```SQL
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
   ....
); 
```

The column parameters specify the names of the columns of the table.

The datatype parameter specifies the type of data the column can hold (e.g. varchar, integer, date, etc.).

### Drop Table Statement
The DROP TABLE statement is used to drop an existing table in a database.

```SQL
DROP TABLE table_name;
```

The TRUNCATE TABLE statement is used to delete the data inside a table, but not the table itself.

```SQL
TRUNCATE TABLE table_name;
```

### Alter Table Statement
The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.

The ALTER TABLE statement is also used to add and drop various constraints on an existing table.

To add a column (for example)

```SQL
ALTER TABLE table_name
ADD column_name datatype;
```

### Auto Increment field
Auto-increment allows a unique number to be generated automatically when a new record is inserted into a table.

Often this is the primary key field that we would like to be created automatically every time a new record is inserted.

### Create View Statement
In SQL, a view is a virtual table based on the result-set of an SQL statement.

A view contains rows and columns, just like a real table. The fields in a view are fields from one or more real tables in the database.

You can add SQL statements and functions to a view and present the data as if the data were coming from one single table.

A view is created with the CREATE VIEW statement. 

```SQL
CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

A view can be updated with the CREATE OR REPLACE VIEW statement.

A view is deleted with the DROP VIEW statement.

### Hosting
If you want your web site to be able to store and retrieve data from a database, your web server should have access to a database-system that uses the SQL language.

If your web server is hosted by an Internet Service Provider (ISP), you will have to look for SQL hosting plans.

The most common SQL hosting databases are MS SQL Server, Oracle, MySQL, and MS Access.

## SQL Constraints
SQL constraints are used to specify rules for data in a table.

Constraints can be specified when the table is created with the CREATE TABLE statement, or after the table is created with the ALTER TABLE statement.

```SQL
CREATE TABLE table_name (
    column1 datatype constraint,
    column2 datatype constraint,
    column3 datatype constraint,
    ....
);
```

Constraints are used to limit the type of data that can go into a table. This ensures the accuracy and reliability of the data in the table. If there is any violation between the constraint and the data action, the action is aborted.

Constraints can be column level or table level. Column level constraints apply to a column, and table level constraints apply to the whole table.

The following constraints are commonly used in SQL:

- NOT NULL - Ensures that a column cannot have a NULL value
- UNIQUE - Ensures that all values in a column are different
- PRIMARY KEY - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
- FOREIGN KEY - Prevents actions that would destroy links between tables
- CHECK - Ensures that the values in a column satisfies a specific condition
- DEFAULT - Sets a default value for a column if no value is specified
- CREATE INDEX - Used to create and retrieve data from the database very quickly

## Intra-relational Constraints
The simplest intra-relational constraints are not null, unique, and primary key.

- Not null

By default, a column can hold NULL values.

The NOT NULL constraint enforces a column to NOT accept NULL values.

This enforces a field to always contain a value, which means that you cannot insert a new record, or update a record without adding a value to this field.

The null value is a special value, which indicates the absence of information.

The constraint not null indicates that the null value is not admissible as the attribute value. In this case, the attribute must always be specified, generally at the insertion stage.

```SQL
Surname character(20) NOT NULL
```

- Unique

The UNIQUE constraint ensures that all values in a column are different.

A unique constraint is applied to an attribute (or a set of attributes) of a table and imposes the requirement that the attribute (or the set of attributes) is a (super)key.

Thus, the constraint ensures that different rows do not possess the same values.

An exception is made for the null value, which can appear in various rows without violating the constraint, since it is assumed that each null value represents an unknown actual value different from that of another null value.

This constraint can be defined in two ways:

In this case, the specification of the attribute is followed by the keyword unique
    
```SQL
RegistrationNumber character(6) UNIQUE
```

The second alternative is necessary when we need to define the constraint on a set of attributes.

```SQL
unique (Attribute{, Attribute})
```

- Primary key

The PRIMARY KEY constraint uniquely identifies each record in a table.

Primary keys must contain UNIQUE values, and cannot contain NULL values.

A table can have only ONE primary key; and in the table, this primary key can consist of single or multiple columns (fields).

SQL allows a primary key constraint to be specified only once for each table (while it is possible to use the constraints unique and not null an arbitrary number of times).

Like the unique constraint, the primary key constraint can be directly defined on a single attribute, or it can be defined by listing the several attributes that make up the primary key.

## Inter-relational Constraints
The most important inter-relational constraints are referential integrity constraints.

- Foreign Key

The FOREIGN KEY constraint is used to prevent actions that would destroy links between tables.

A FOREIGN KEY is a field (or collection of fields) in one table, that refers to the PRIMARY KEY in another table.

The table with the foreign key is called the child table, and the table with the primary key is called the referenced or parent table.

The FOREIGN KEY constraint prevents invalid data from being inserted into the foreign key column, because it has to be one of the values contained in the parent table.

The correspondence between the local and external attributes reflects their order: the first attribute in the foreign key corresponds to the first attribute in the referenced table, and so on for the other attributes.

---

In the case of all the constraints seen so far, when the system detects a violation generated by an update, the system just rejects the update, signalling the error to the user. With referential integrity constraints, SQL also allows the user to choose other actions to be taken when a violation is introduced.

Various options are offered for responding to violations generated by alterations to the external table.

In particular, for updates, it is possible to react in one of the following ways:
- cascade: the new value of the attribute of the external table is assigned to all the matching rows of the internal table;
- set null: the value null is assigned to the referring attribute in the internal table in place of the value modified in the external table;
- set default: the default value is assigned to the referring attribute in the internal table in place of the value modified in the external table;
- no action: the update is simply rejected, with no correcting action by the system.

For violations produced by the deletion of an element of the external table, the same set of reactions is available.

---

## Schema Updates
SQL provides primitives for the manipulation of database schemas, which enable the modification of previously introduced table definitions.
The commands used for this purpose are alter and drop.

- ALTER

The alter command allows the modification of domains and schemas of tables.

- DROP

While the alter command carries out modifications to the domains or schemas of the tables, the drop command allows the removal of components, whether they be schemas, domains, tables, views or assertions.

## Relational Catalogues
Each relational dbms manages its own data dictionary (or rather the description of the tables present in the database) using a relational schema.
The database therefore contains two types of table: those that contain the data and those that contain the metadata. This second group of tables constitutes the catalogue of the database.

# <a id="sql-syntax"></a>SQL Syntax
SQL Syntax is a unique set of rules and guidelines.

Most of the actions you need to perform on a database are done with SQL statements.

## Rules

- SQL statements always start with the keywords.
- SQL keywords are NOT case sensitive: select is the same as SELECT
- Some database systems require a semicolon at the end of each SQL statement. Semicolon is the standard way to separate each SQL statement in database systems that allow more than one SQL statement to be executed in the same call to the server.

# <a id="sql-commands">SQL Commands
Some of the most important SQL commands:
- SELECT - extracts data from a database
- UPDATE - updates data in a database
- DELETE - deletes data from a database
- INSERT INTO - inserts new data into a database
- CREATE DATABASE - creates a new database
- ALTER DATABASE - modifies a database
- CREATE TABLE - creates a new table
- ALTER TABLE - modifies a table
- DROP TABLE - deletes a table
- CREATE INDEX - creates an index (search key)
- DROP INDEX - deletes an index

## SELECT statement
The SELECT statement is used to select data from a database.

The data returned is stored in a result table, called the result-set.

```SQL
SELECT column1, column2, ...
FROM table_name;
```
To select all
```SQL
SELECT * FROM table_name;
```

### SELECT DISTINCT
The SELECT DISTINCT statement is used to return only distinct (different) values.

Inside a table, a column often contains many duplicate values; and sometimes you only want to list the different (distinct) values.

## FROM Clause
The SQL FROM clause is used to list the tables and any joins required for the SQL statement.
    
## WHERE Clause
The WHERE clause is used to filter records.

It is used to extract only those records that fulfill a specified condition.

```SQL
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```
{The WHERE clause is not only used in SELECT statements, it is also used in UPDATE, DELETE, etc.}
    
## AND, OR, NOT Operators
The WHERE clause can be combined with AND, OR, and NOT operators.

The AND and OR operators are used to filter records based on more than one condition:

    - The AND operator displays a record if all the conditions separated by AND are TRUE.
    - The OR operator displays a record if any of the conditions separated by OR is TRUE.

The NOT operator displays a record if the condition(s) is NOT TRUE.
    
```SQL
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...;
```
```SQL
SELECT column1, column2, ...
FROM table_name
WHERE condition1 OR condition2 OR condition3 ...;
```    
```SQL 
SELECT column1, column2, ...
FROM table_name
WHERE NOT condition; 
```  
    
You can also combine the AND, OR and NOT operators.
    
## ORDER BY Keyword
The ORDER BY keyword is used to sort the result-set in ascending or descending order.

The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.
    
```SQL
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;    
```

## INSERT INTO Statement
The INSERT INTO statement is used to insert new records in a table.

It is possible to write the INSERT INTO statement in two ways.

1. Specify both the column names and the values to be inserted:
```SQL
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...); 
```
    
2. If you are adding values for all the columns of the table, you do not need to specify the column names in the SQL query. However, make sure the order of the values is in the same order as the columns in the table. Here, the INSERT INTO syntax would be as follows:    
```SQL
INSERT INTO table_name
VALUES (value1, value2, value3, ...);     
```

## NULL Values
A field with a NULL value is a field with no value.

If a field in a table is optional, it is possible to insert a new record or update a record without adding a value to this field. Then, the field will be saved with a NULL value.

How to test for null values:
It is not possible to test for NULL values with comparison operators, such as =, <, or <>.

We will have to use the IS NULL and IS NOT NULL operators instead.

```SQL
SELECT column_names
FROM table_name
WHERE column_name IS NULL;
```
```SQL
SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;     
```

## UPDATE Statement
The UPDATE statement is used to modify the existing records in a table.
    
```SQL
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;    
```    

Be careful when updating records in a table! Notice the WHERE clause in the UPDATE statement. The WHERE clause specifies which record(s) that should be updated. If you omit the WHERE clause, all records in the table will be updated!
    
## DELETE Statement
The DELETE statement is used to delete existing records in a table.
    
```SQL
DELETE FROM table_name WHERE condition;   
```    

Be careful when deleting records in a table! Notice the WHERE clause in the DELETE statement. The WHERE clause specifies which record(s) should be deleted. If you omit the WHERE clause, all records in the table will be deleted!
    
## SELECT TOP or LIMIT Clause
The SELECT TOP clause is used to specify the number of records to return.

The SELECT TOP clause is useful on large tables with thousands of records. Returning a large number of records can impact performance.
    
 Not all database systems support the SELECT TOP clause. MySQL supports the LIMIT clause to select a limited number of records, while Oracle uses FETCH FIRST n ROWS ONLY and ROWNUM.
      
## MIN(), MAX() Functions
The MIN() function returns the smallest value of the selected column.

The MAX() function returns the largest value of the selected column.
    
```SQL
SELECT MIN(column_name)
FROM table_name
WHERE condition;    
```
 
```SQL
SELECT MAX(column_name)
FROM table_name
WHERE condition;    
```
    
## COUNT(), AVG(), SUM() Functions
The COUNT() function returns the number of rows that matches a specified criterion.    
```SQL
SELECT COUNT(column_name)
FROM table_name
WHERE condition;    
```  

The AVG() function returns the average value of a numeric column.     

```SQL
SELECT AVG(column_name)
FROM table_name
WHERE condition;    
```
    
The SUM() function returns the total sum of a numeric column. 
    
```SQL
SELECT SUM(column_name)
FROM table_name
WHERE condition;   
```   
    
## LIKE Operator
The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.

There are two wildcards often used in conjunction with the LIKE operator:

     The percent sign (%) represents zero, one, or multiple characters
     The underscore sign (_) represents one, single character
    
```SQL
SELECT column1, column2, ...
FROM table_name
WHERE columnN LIKE pattern;   
``` 
    
## Wildcard Characters
A wildcard character is used to substitute one or more characters in a string.

Wildcard characters are used with the LIKE operator. The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.    

## IN Operator
The IN operator allows you to specify multiple values in a WHERE clause.

The IN operator is a shorthand for multiple OR conditions.
    
```SQL
SELECT column_name(s)
FROM table_name
WHERE column_name IN (value1, value2, ...);  
``` 

or

```SQL    
SELECT column_name(s)
FROM table_name
WHERE column_name IN (SELECT STATEMENT);
```
    
## BETWEEN Operator
The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.

The BETWEEN operator is inclusive: begin and end values are included.
    
```SQL
SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2  
``` 
    
## Aliases
SQL aliases are used to give a table, or a column in a table, a temporary name.

Aliases are often used to make column names more readable.

An alias only exists for the duration of that query.

An alias is created with the AS keyword.
        
# SQL Joins
A JOIN clause is used to combine rows from two or more tables, based on a related column between them.

Different types of the JOINs in SQL:

- (INNER) JOIN: Returns records that have matching values in both tables
- LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
- RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
- FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table

![image](https://user-images.githubusercontent.com/75806093/124394160-748af600-dcfe-11eb-8b76-41084de2a534.png)
    
## INNER JOIN Keyword
The INNER JOIN keyword selects records that have matching values in both tables.
    
```SQL
SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;  
``` 

Note: The INNER JOIN keyword selects all rows from both tables as long as there is a match between the columns.   
    
## LEFT JOIN Keyword
The LEFT JOIN keyword returns all records from the left table (table1), and the matching records from the right table (table2).
    
The result is 0 records from the right side, if there is no match.    

```SQL
SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;  
```

Note: In some databases LEFT JOIN is called LEFT OUTER JOIN.

## RIGHT JOIN Keyword
The RIGHT JOIN keyword returns all records from the right table (table2), and the matching records from the left table (table1).
    
The result is 0 records from the left side, if there is no match.
    
```SQL
SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;  
``` 
 
Note: In some databases RIGHT JOIN is called RIGHT OUTER JOIN.
    
## FULL OUTER JOIN Keyword
The FULL OUTER JOIN keyword returns all records when there is a match in left (table1) or right (table2) table records.

Tip: FULL OUTER JOIN and FULL JOIN are the same.    
    
```SQL
SELECT column_name(s)
FROM table1
FULL OUTER JOIN table2
ON table1.column_name = table2.column_name
WHERE condition;  
```

Note: The FULL OUTER JOIN keyword returns all matching records from both tables whether the other table matches or not.
    
## Self Join
A self join is a regular join, but the table is joined with itself.
    
```SQL
SELECT column_name(s)
FROM table1 T1, table1 T2
WHERE condition;  
``` 

T1 and T2 are different table aliases for the same table.
    
## UNION Operator
The UNION operator is used to combine the result-set of two or more SELECT statements.
    
    - Every SELECT statement within UNION must have the same number of columns
    - The columns must also have similar data types
    - The columns in every SELECT statement must also be in the same order
    
```SQL
SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2;  
```

The UNION operator selects only distinct values by default. To allow duplicate values, use UNION ALL:
    
```SQL
SELECT column_name(s) FROM table1
UNION ALL
SELECT column_name(s) FROM table2;  
```

Note: The column names in the result-set are usually equal to the column names in the first SELECT statement.

## GROUP BY Statement
The GROUP BY statement groups rows that have the same values into summary rows, like "find the number of customers in each country".

The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.
    
```SQL
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s);  
```    

## HAVING Clause
The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions.
    
```SQL
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s);  
```
    
## EXISTS Operator
The EXISTS operator is used to test for the existence of any record in a subquery.

The EXISTS operator returns TRUE if the subquery returns one or more records.
    
```SQL
SELECT column_name(s)
FROM table_name
WHERE EXISTS
(SELECT column_name FROM table_name WHERE condition);  
```
    
## ANY, ALL Operators
The ANY and ALL operators allow you to perform a comparison between a single column value and a range of other values.

The ANY operator:

    - returns a boolean value as a result
    - returns TRUE if ANY of the subquery values meet the condition

ANY means that the condition will be true if the operation is true for any of the values in the range.
    
```SQL
SELECT column_name(s)
FROM table_name
WHERE column_name operator ANY
  (SELECT column_name
  FROM table_name
  WHERE condition);  
```

The ALL operator:

    - returns a boolean value as a result
    - returns TRUE if ALL of the subquery values meet the condition
    - is used with SELECT, WHERE and HAVING statements

ALL means that the condition will be true only if the operation is true for all values in the range. 
    
## SELECT INTO Statement
The SELECT INTO statement copies data from one table into a new table.
    
```SQL
SELECT *
INTO newtable [IN externaldb]
FROM oldtable
WHERE condition;  
```    

To copy only some columns into a new table:
    
```SQL
SELECT column1, column2, column3, ...
INTO newtable [IN externaldb]
FROM oldtable
WHERE condition; 
```
 
## INSERT INTO SELECT Statement
The INSERT INTO SELECT statement copies data from one table and inserts it into another table.

The INSERT INTO SELECT statement requires that the data types in source and target tables matches.

Note: The existing records in the target table are unaffected.
    
```SQL
INSERT INTO table2
SELECT * FROM table1
WHERE condition; 
```

## CASE Statement
The CASE statement goes through conditions and returns a value when the first condition is met (like an if-then-else statement). So, once a condition is true, it will stop reading and return the result. If no conditions are true, it returns the value in the ELSE clause.

If there is no ELSE part and no conditions are true, it returns NULL.
    
```SQL
CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    WHEN conditionN THEN resultN
    ELSE result
END; 
```
    
## Stored Procedures
A stored procedure is a prepared SQL code that you can save, so the code can be reused over and over again.

So if you have an SQL query that you write over and over again, save it as a stored procedure, and then just call it to execute it.

You can also pass parameters to a stored procedure, so that the stored procedure can act based on the parameter value(s) that is passed.
    
```SQL
CREATE PROCEDURE procedure_name
AS
sql_statement
GO; 
```
    
```SQL
EXEC procedure_name; 
```
    
## Comments
Comments are used to explain sections of SQL statements, or to prevent execution of SQL statements.

- Single line comments

Single line comments start with --.

Any text between -- and the end of the line will be ignored (will not be executed).
    
```SQL
--Select all:
SELECT * FROM Customers; 
```

- Multi-line comments
Multi-line comments start with /* and end with */.

Any text between /* and */ will be ignored.

```SQL    
/*Select all the columns
of all the records
in the Customers table:*/
SELECT * FROM Customers;
```
    
# SQL Operators

## Arithmetic Operators
| Operator | Description |
| :------: | :---------: |
| **+** | Add | 	
| **-** | Subtract |	
| ***** | Multiply |
| **/** | Divide |
| **%** | Modulo |
    
## Bitwise Operators
| Operator | Description |
| :------: | :---------: |
| **&** | Bitwise AND |
| **|** | Bitwise OR |
| **^** | Bitwise exclusive OR |
    
## Comparison Operators
| Operator | Description |
| :------: | :---------: |
| **=** | Equal |
| **>** | Greater than |
| **<** | Less than |
| **>=** | Greater than or equal |
| **<=** | Less than or equal |
| **!= or <>** | Not equal |
    
## Compound Operators
| Operator | Description |
| :------: | :---------: |
| **+=** | Add equals |
| **-=** | Subtract equals |
| ***=** | Multiply equals |
| **/=** | Divide equals |
| **%=** | Modulo equals |
    
## Logical Operators
| Operator | Description |
| :------: | :---------: |
| **ALL** | TRUE if all of the subquery values meet the condition |
| **AND** | TRUE if all the conditions separated by AND is TRUE |
| **ANY** | TRUE if any of the subquery values meet the condition |    
| **BETWEEN** | TRUE if the operand is within the range of comparisons |
| **EXISTS** | TRUE if the subquery returns one or more records |    
| **LIKE** | TRUE if the operand matches a pattern |
| **IN** | TRUE if the operand is equal to one of a list of expressions |
| **NOT** | Displays a record if the condition(s) is NOT TRUE |
| **OR** | TRUE if any of the conditions separated by OR is TRUE |
| **SOME** | TRUE if any of the subquery values meet the condition |
    
