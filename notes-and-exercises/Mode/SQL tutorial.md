## SQL Tutorial

### Basic SQL

SQL (Structured Query Language) is a programming language designed for managing data in a relational database. SQL has a variety of functions that allow its users to read, manipulate, and change data.

Characteristics:

    - It's semantically easy to understand and learn.
    - Because it can be used to access large amounts of data directly where it's stored, analysts don't have to copy data into other applications.
    - Compared to spreadsheet tools, data analysis done in SQL is easy to audit and replicate. For analysts, this means no more looking for the cell with the typo in the formula.

A database is an organized collection of data.

If you've used Excel, you should already be familiar with tables—they're similar to spreadsheets. Tables have rows and columns just like Excel, but are a little more rigid. Database tables, for instance, are always organized by column, and each column must have a unique name.

Broadly, within databases, tables are organized in schemas.

_syntax_

There are two required ingredients in any SQL query: SELECT and FROM, and they have to be in that order. SELECT indicates which columns you'd like to view, and FROM identifies the table that they live in.

Whenever you select multiple columns, they must be separated by commas, but you should not include a comma after the last column name. If you want to select every column in a table, you can use * instead of the column names.

_formatting_

You might have noticed that the SELECT and FROM commands are capitalized. This isn't actually necessary—SQL will understand these commands if you type them in lowercase. Capitalizing commands is simply a convention that makes queries easier to read. Similarly, SQL treats one space, multiple spaces, or a line break as being the same thing.

Most people avoid putting spaces in column names because it's annoying to deal with spaces in SQL—if you want to have spaces in column names, you need to always refer to those columns in double quotes.

_limit_

Many analysts use limits as a simple way to keep their queries from taking too long to return. The aim of many of your queries will simply be to see what a particular table looks like—you'll want to scan the first few rows of data to get an idea of which fields you care about and how you want to manipulate them. If you query a very large table (such as one with hundreds of thousands or millions of rows) and don't use a limit, you could end up waiting a long time for all of your results to be displayed, which doesn't make sense if you only care about the first few.

You can manually add a limit with a SQL command: LIMIT

_where_

The SQL WHERE clause works in a plain-English way. If you write a WHERE clause that filters based on values in one column, you'll limit the results in all columns to rows that satisfy the condition. The idea is that each row is one data point or observation, and all the information contained in that row belongs together.

_comparison operators_

The most basic way to filter data is using comparison operators. The easiest way to understand them is to start by looking at a list of them:

| Name | Symbol |
|-|-|
| Equal to	| = |
| Not equal to	| <> or != |
| Greater than |	> |
| Less than	| < |
| Greater than or equal to	| >= |
| Less than or equal to |	<= |

These comparison operators make the most sense when applied to numerical columns.

All of the above operators work on non-numerical data as well. = and != make perfect sense—they allow you to select rows that match or don't match any value, respectively.

There are some important rules when using these operators, though. If you're using an operator with values that are non-numeric, you need to put the value in single quotes: 'value'.

You can use >, <, and the rest of the comparison operators on non-numeric columns as well—they filter based on alphabetical order.

_arithmetic_

You can perform arithmetic in SQL using the same operators you would in Excel: +, -, *, /.

/ However, in SQL you can only perform arithmetic across columns on values in a given row. To clarify, you can only add values in multiple columns from the same row together using +—if you want to add values across multiple rows, you'll need to use aggregate functions

As in Excel, you can use parentheses to manage the order of operations. It occasionally makes sense to use parentheses even when it's not absolutely necessary just to make your query easier to read.

_logical operators_

You’ll likely also want to filter data using several conditions—possibly more often than you'll want to filter by only one condition. Logical operators allow you to use multiple comparison operators in one query.

- LIKE allows you to match similar values, instead of exact values.
- IN allows you to specify a list of values you'd like to include.
- BETWEEN allows you to select only rows within a certain range.
- IS NULL allows you to select rows that contain no data in a given column.
- AND allows you to select only rows that satisfy two conditions.
- OR allows you to select rows that satisfy either of two conditions.
- NOT allows you to select rows that do not match a certain condition.

LIKE is a logical operator in SQL that allows you to match on similar values rather than exact ones.

The % represents any character or set of characters. In this case, % is referred to as a "wildcard." You can also use _ (a single underscore) to substitute for an individual character.

IN is a logical operator in SQL that allows you to specify a list of values that you'd like to include in the results.

As with comparison operators, you can use non-numerical values, but they need to go inside single quotes. Regardless of the data type, the values in the list must be separated by commas.

BETWEEN is a logical operator in SQL that allows you to select only rows that are within a specific range. It has to be paired with the AND operator.

BETWEEN includes the range bounds that you specify in the query, in addition to the values between them.

IS NULL is a logical operator in SQL that allows you to exclude rows with missing data from your results.

Some tables contain null values—cells with no data in them at all. This can be confusing for heavy Excel users, because the difference between a cell having no data and a cell containing a space isn't meaningful in Excel. In SQL, the implications can be pretty serious. 

You can select rows that contain no data in a given column by using IS NULL.

AND is a logical operator in SQL that allows you to select only rows that satisfy two conditions. You can use SQL's AND operator with additional AND statements or any other comparison operator, as many times as you want.

OR is a logical operator in SQL that allows you to select rows that satisfy either of two conditions. It works the same way as AND, which selects the rows that satisfy both of two conditions.

You'll notice that each row will satisfy one of the two conditions. You can combine AND with OR using parenthesis.

NOT is a logical operator in SQL that you can put before any conditional statement to select rows for which that statement is false.

Using NOT with < and > usually doesn't make sense because you can simply use the opposite comparative operator instead.

NOT is commonly used with LIKE. NOT is also frequently used to identify non-null rows, but the syntax is somewhat special—you need to include IS beforehand.

_order by_

Once you've learned how to filter data, it's time to learn how to sort data. The ORDER BY clause allows you to reorder your results based on the data in one or more columns.

Ascending order it's SQL's default. If you order a numerical column in ascending order, it will start with smaller (or most negative) numbers, with each successive row having a higher numerical value than the previous. If you'd like your results in the opposite order (referred to as descending order), you need to add the DESC operator.

You can also order by mutiple columns. This is particularly useful if your data falls into categories and you'd like to organize rows by date, for example, but keep all of the results within a given category together.

First, columns in the ORDER BY clause must be separated by commas. Second, the DESC operator is only applied to the column that precedes it. Finally, the results are sorted by the first column mentioned.

_comments_

You can "comment out" pieces of code by adding combinations of characters. In other words, you can specify parts of your query that will not actually be treated like SQL code. It can be helpful to include comments that explain your thinking so that you can easily remember what you intended to do if you ever want to revisit your work. Commenting can also be useful if you want to test variations on your query while keeping all of your code intact.

You can use-- (two dashes) to comment out everything to the right of them on a given line. You can also leave comments across multiple lines using /* to begin the comment and */ to close it.

### Intermediate SQL

SQL is excellent at aggregating data the way you might in a pivot table in Excel. The functions themselves are the same ones you will find in Excel or any other analytics program.

_aggregate functions_

- COUNT counts how many rows are in a particular column.
- SUM adds together all the values in a particular column.
- MIN and MAX return the lowest and highest values in a particular column, respectively.
- AVG calculates the average of a group of selected values.

Aggregate functions are used to perform operations across entire columns (which could include millions of rows of data or more).

Counting all rows:
COUNT is a SQL aggregate function for counting the number of rows in a particular column. COUNT is the easiest aggregate function to begin with because verifying your results is extremely simple.

Counting individual columns:
Things start to get a little bit tricky when you want to count individual columns. If the column has some nulls the result will be lower than the total count.

Counting non-numerical columns:
One nice thing about COUNT is that you can use it on non-numerical columns.  It's hard to tell because each row has a different date value, but COUNT simply counts the total number of non-null rows, not the distinct values.

SUM is a SQL aggregate function. that totals the values in a given column. Unlike COUNT, you can only use SUM on columns containing numerical values.

An important thing to remember: aggregators only aggregate vertically.

You don't need to worry as much about the presence of nulls with SUM as you would with COUNT, as SUM treats nulls as 0.

MIN and MAX are SQL aggregation functions that return the lowest and highest values in a particular column.

They're similar to COUNT in that they can be used on non-numerical columns. Depending on the column type, MIN will return the lowest number, earliest date, or non-numerical value as close alphabetically to "A" as possible. As you might suspect, MAX does the opposite—it returns the highest number, the latest date, or the non-numerical value closest alphabetically to "Z."

AVG is a SQL aggregate function that calculates the average of a selected group of values. It's very useful, but has some limitations. First, it can only be used on numerical columns. Second, it ignores nulls completely.

There are some cases in which you'll want to treat null values as 0. For these cases, you'll want to write a statement that changes the nulls to 0.

_group by_

SQL aggregate function like COUNT, AVG, and SUM have something in common: they all aggregate across the entire table. But what if you want to aggregate only part of a table? In situations like this, you'd need to use the GROUP BY clause. GROUP BY allows you to separate data into groups, which can be aggregated independently of one another.

You can group by multiple columns, but you have to separate column names with commas—just as with ORDER BY).

Using GROUP BY with ORDER BY:
The order of column names in your GROUP BY clause doesn't matter—the results will be the same regardless. If you want to control how the aggregations are grouped together, use ORDER BY. 

Using GROUP BY with LIMIT
There's one thing to be aware of as you group by multiple columns: SQL evaluates the aggregations before the LIMIT clause. If you don't group by any columns, you'll get a 1-row result—no problem there. If you group by a column with enough unique values that it exceeds the LIMIT number, the aggregates will be calculated, and then some rows will simply be omitted from the results.

_having_

HAVING is the "clean" way to filter a query that has been aggregated, but this is also commonly done using a subquery.

Query clause order:

1. SELECT
2. FROM
3. WHERE
4. GROUP BY
5. HAVING
6. ORDER BY

_case_

The CASE statement is SQL's way of handling if/then logic. The CASE statement is followed by at least one pair of WHEN and THEN statements—SQL's equivalent of IF/THEN in Excel. Because of this pairing, you might be tempted to call this SQL CASE WHEN, but CASE is the accepted term.

Every CASE statement must end with the END statement. The ELSE statement is optional, and provides a way to capture values not specified in the WHEN/THEN statements.

Adding multiple conditions to a CASE statement:
You can also define a number of outcomes in a CASE statement by including as many WHEN/THEN statements as you'd like.

You can also string together multiple conditional statements with AND and OR the same way you might in a WHERE clause.

A quick review of CASE basics:

    - The CASE statement always goes in the SELECT clause
    - CASE must include the following components: WHEN, THEN, and END. ELSE is an optional component.
    - You can make any conditional statement using any conditional operator (like WHERE ) between WHEN and THEN. This includes stringing together multiple conditional statements using AND and OR.
    - You can include multiple WHEN statements, as well as an ELSE statement to deal with any unaddressed conditions.

Using CASE with aggregate functions:
CASE's slightly more complicated and substantially more useful functionality comes from pairing it with aggregate functions. For example, let's say you want to only count rows that fulfill a certain condition. Since COUNT ignores nulls, you could use a CASE statement to evaluate the condition and produce null or non-null values depending on the outcome.

_distinct_

You'll occasionally want to look at only the unique values in a particular column. You can do this using SELECT DISTINCT syntax.

If you include two (or more) columns in a SELECT DISTINCT clause, your results will contain all of the unique pairs of those two columns.

DISTINCT can be particularly helpful when exploring a new data set. In many real-world scenarios, you will generally end up writing several preliminary queries in order to figure out the best approach to answering your initial question. Looking at the unique values on each column can help identify how you might want to group or filter the data.

Using DISTINCT in aggregations:
You can use DISTINCT when performing an aggregation. You'll probably use it most commonly with the COUNT function.

_SQL joins_

The term "relational database" refers to the fact that the tables within it "relate" to one another—they contain common identifiers that allow information from multiple tables to be combined easily.

The anatomy of a join:

After the FROM statement, we have two new statements: JOIN, which is followed by a table name, and ON, which is followed by a couple column names separated by an equals sign.

Though the ON statement comes after JOIN, it's a bit easier to explain it first. ON indicates how the two tables (the one after the FROM and the one after the JOIN) relate to each other.

_inner join_

It's often the case that one or both tables being joined contain rows that don't have matches in the other table. The way this is handled depends on whether you're making an inner join or an outer join.

Inner joins eliminate rows from both tables that do not satisfy the join condition set forth in the ON statement. In mathematical terms, an inner join is the intersection of the two tables.

![image](https://user-images.githubusercontent.com/75806093/139414895-5be02035-4f45-4791-b6d6-c7ef32344664.png)

Joining tables with identical column names:
When you join two tables, it might be the case that both tables have columns with identical names.

The results can only support one column with a given name—when you include 2 columns of the same name, the results will simply show the exact same result set for both columns even if the two columns should contain different data. You can avoid this by naming the columns individually. It happens that these two columns will actually contain the same data because they are used for the join key, but the following query technically allows these columns to be independent.

_outer joins_

When performing an inner join, rows from either table that are unmatched in the other table are not returned. In an outer join, unmatched rows in one or both tables can be returned. There are a few types of outer joins:

- LEFT JOIN returns only unmatched rows from the left table.
- RIGHT JOIN returns only unmatched rows from the right table.
- FULL OUTER JOIN returns unmatched rows from both tables.

![image](https://user-images.githubusercontent.com/75806093/139415327-893fce50-516c-4302-848c-6c81e412a107.png)

The LEFT JOIN command

![image](https://user-images.githubusercontent.com/75806093/139417030-b2029ccc-0cba-4f3a-aca7-647d466290d2.png)

LEFT JOIN command tells the database to return all rows in the table in the FROM clause, regardless of whether or not they have matches in the table in the LEFT JOIN clause.

The RIGHT JOIN command

Right joins are similar to left joins except they return all rows from the table in the RIGHT JOIN clause and only matching rows from the table in the FROM clause.

![image](https://user-images.githubusercontent.com/75806093/139417922-7738fb22-c415-45f8-950a-c37afbb19f5f.png)

RIGHT JOIN is rarely used because you can achieve the results of a RIGHT JOIN by simply switching the two joined table names in a LEFT JOIN.

The convention of always using LEFT JOIN probably exists to make queries easier to read and audit, but beyond that there isn't necessarily a strong reason to avoid using RIGHT JOIN.

It's worth noting that LEFT JOIN and RIGHT JOIN can be written as LEFT OUTER JOIN and RIGHT OUTER JOIN, respectively.

SQL Joins Using WHERE or ON

Filtering in the ON clause:
Normally, filtering is processed in the WHERE clause once the two tables have already been joined. It's possible, though that you might want to filter one or both of the tables before joining them. For example, you only want to create matches between the tables under certain circumstances.

Filtering in the WHERE clause:
If you move the same filter to the WHERE clause, you will notice that the filter happens after the tables are joined.

The SQL FULL JOIN command

You're not likely to use FULL JOIN (which can also be written as FULL OUTER JOIN) too often, but it's worth covering anyway. LEFT JOIN and RIGHT JOIN each return unmatched rows from one of the tables—FULL JOIN returns unmatched rows from both tables. It is commonly used in conjunction with aggregations to understand the amount of overlap between two tables.

_union_

SQL joins allow you to combine two datasets side-by-side, but UNION allows you to stack one dataset on top of the other. Put differently, UNION allows you to write two separate SELECT statements, and to have the results of one statement display in the same table as the results from the other statement.

UNION only appends distinct values. More specifically, when you use UNION, the dataset is appended, and any rows in the appended table that are exactly identical to rows in the first table are dropped. If you'd like to append all the values from the second table, use UNION ALL. You'll likely use UNION ALL far more often than UNION.

SQL has strict rules for appending data:

- Both tables must have the same number of columns
- The columns must have the same data types in the same order as the first table

While the column names don't necessarily have to be the same, you will find that they typically are. This is because most of the instances in which you'd want to use UNION involve stitching together different parts of the same dataset.

Since you are writing two separate SELECT statements, you can treat them differently before appending. For example, you can filter them differently using different WHERE clauses.

_joins on multiple keys_

There are couple reasons you might want to join tables on multiple foreign keys. The first has to do with accuracy. The second reason has to do with performance. SQL uses "indexes" (essentially pre-defined joins) to speed up queries. 

_self joins_

Sometimes it can be useful to join a table to itself.

### Advanced SQL

_data types_

Each column in a database table is required to have a name and a data type.

An SQL developer must decide what type of data that will be stored inside each column when creating a table. The data type is a guideline for SQL to understand what type of data is expected inside of each column, and it also identifies how SQL will interact with the stored data.

Data types might have different names in different database. And even if the name is the same, the size and other details may be different!

SQL General Data Types

![image](https://user-images.githubusercontent.com/75806093/139421741-be4577e9-3ca7-43ab-90bd-1d7875f9374e.png)

![image](https://user-images.githubusercontent.com/75806093/139421797-094b0be1-540a-44d3-a5c5-8e3d4c40130d.png)

SQL Data Type Quick Reference

![image](https://user-images.githubusercontent.com/75806093/139421845-5642ea8a-2378-4b8c-8276-9a6283a560ec.png)

_Changing a column's data type_

It's certainly best for data to be stored in its optimal format from the beginning, but if it isn't, you can always change it in your query. It's particularly common for dates or numbers, for example, to be stored as strings. This becomes problematic when you want to sum a column and you get an error because SQL is reading numbers as strings. When this happens, you can use CAST or CONVERT to change the data type to a numeric one that will allow you to perform the sum.

You can actually achieve this with two different type of syntax. For example, CAST(column_name AS integer) and column_name::integer produce the same result.

You could replace integer with any other data type that would make sense for that column—all values in a given column must fit with the new data types.

_date format_

If you live in the United States, you're probably used to seeing dates formatted as MM-DD-YYYY or a similar, month-first format. It's an odd convention compared to the rest of the world's standards, but it's not necessarily any worse than DD-MM-YYYY. The problem with both of these formats is that when they are stored as strings, they don't sort in chronological order.

Assuming you've got some dates properly stored as a date or time data type, you can do some pretty powerful things. Maybe you'd like to calculate a field of dates a week after an existing field. Or maybe you'd like to create a field that indicates how many days apart the values in two other date fields are. These are trivially simple, but it's important to keep in mind that the data type of your results will depend on exactly what you are doing to the dates.

When you perform arithmetic on dates (such as subtracting one date from another), the results are often stored as the interval data type—a series of integers that represent a period of time.

_data wrangling_

From Wikipedia:

Data munging or data wrangling is loosely the process of manually converting or mapping data from one "raw" form into another format that allows for more convenient consumption of the data with the help of semi-automated tools.

In other words, data wrangling (or munging) is the process of programmatically transforming data into a format that makes it easier to work with. This might mean modifying all of the values in a given column in a certain way, or merging multiple columns together. The necessity for data wrangling is often a biproduct of poorly collected or presented data. Data that is entered manually by humans is typically fraught with errors; data collected from websites is often optimized to be displayed on websites, not to be sorted and aggregated.

_SQL string functions to clean data_

_left, right, and length_

You can use LEFT to pull a certain number of characters from the left side of a string and present them as a separate string. The syntax is LEFT(string, number of characters).

RIGHT does the same thing, but from the right side.

The LENGTH function returns the length of a string.

_trim_

The TRIM function is used to remove characters from the beginning and end of a string.

The TRIM function takes 3 arguments. First, you have to specify whether you want to remove characters from the beginning ('leading'), the end ('trailing'), or both ('both', as used above). Next you must specify all characters to be trimmed. Any characters included in the single quotes will be removed from both beginning, end, or both sides of the string. Finally, you must specify the text you want to trim using FROM.

_position and strpos_

POSITION allows you to specify a substring, then returns a numerical value equal to the character number (counting from left) where that substring first appears in the target string.

You can also use the STRPOS function to achieve the same results—just replace IN with a comma and switch the order of the string and substring.

Importantly, both the POSITION and STRPOS functions are case-sensitive. If you want to look for a character regardless of its case, you can make your entire string a single by using the UPPER or LOWER functions described below.

_substr_

LEFT and RIGHT both create substrings of a specified length, but they only do so starting from the sides of an existing string. If you want to start in the middle of a string, you can use SUBSTR. The syntax is SUBSTR(*string*, *starting character position*, *# of characters*)

_concat_

You can combine strings from several columns together (and with hard-coded values) using CONCAT. Simply order the values you want to concatenate and separate them with commas. If you want to hard-code values, enclose them in single quotes.

Alternatively, you can use two pipe characters (||) to perform the same concatenation.

_changing case with upper and lower_

Sometimes, you just don't want your data to look like it's screaming at you. You can use LOWER to force every character in a string to become lower-case. Similarly, you can use UPPER to make all the letters appear in upper-case

_turning strings into dates_

Dates are some of the most commonly screwed-up formats in SQL. This can be the result of a few things:

- The data was manipulated in Excel at some point, and the dates were changed to MM/DD/YYYY format or another format that is not compliant with SQL's strict standards.
- The data was manually entered by someone who use whatever formatting convention he/she was most familiar with.
- The date uses text (Jan, Feb, etc.) intsead of numbers to record months.

In order to take advantage of all of the great date functionality (INTERVAL, as well as some others you will learn in the next section), you need to have your date field formatted appropriately. This often involves some text manipulation, followed by a CAST.

_turning dates into more useful dates_

Once you've got a well-formatted date field, you can manipulate in all sorts of interesting ways.

You've learned how to construct a date field, but what if you want to deconstruct one? You can use EXTRACT to pull the pieces apart one-by-one.

You can also round dates to the nearest unit of measurement. This is particularly useful if you don't care about an individual date, but do care about the week (or month, or quarter) that it occurred in. The DATE_TRUNC function rounds a date to whatever precision you specify. The value displayed is the first value in that period. So when you DATE_TRUNC by year, any value in that year will be listed as January 1st of that year.

_coalesce_

Occasionally, you will end up with a dataset that has some nulls that you'd prefer to contain actual values. This happens frequently in numerical data (displaying nulls as 0 is often preferable), and when performing outer joins that result in some unmatched rows. In cases like this, you can use COALESCE to replace the null values.
