# DataCamp - Python Programmer
Career Track - 63 hours - 16 courses

## Table of Content
- [Introduction to Data Science in Python](#introduction)
- [Data Types for Data Science in Python](#data-types)
- [Data Manipulation with pandas](#data-manipulation-pandas)
- [Python Data Science toolbox 1](#python-ds-toolbox-1)
- [Python Data Science toolbox 2](#python-ds-toolbox-2)
- [Writing Efficient Python Code](#writing-efficient-python-code)
- [Working with Dates and Times in Python](#working-dates-times)
- [Regular Expressions in Python](#regular-expressions)
- [Web Scraping in Python](#web-scraping)
- [Writing Functions in Python](#writing-functions)
- [Introduction to Shell](#introduction-to-shell)
- [Parallel Programming with Dask in Python](#parallel-programming-dask-python)
- [Software Engineering for Data Scientists in Python](#software-engineering-for-data-scientists)
- [Developing Python Packages](#developing-python-packages)
- [Unit Testing for Data Science in Python](#unit-testing-for-ds)
- [Object-Oriented Programming in Python](#object-oriented-programming)

## <a id="introduction"></a>Introduction to Data Science in Python

### Getting started in Python

Modules: groups related tools together; for ex. 'matplotlib', 'pandas', scikit-learn', 'scipy'

To import a module
- type "import"
- use "as" to import the module with an alias

```python
import moduleName as abbreviation
```

```python
import pandas as pd
from matplotlib import pyplot as plt
```

Variables: associates a variable name with a value

Rules:

    - must start with a letter
    - no spaces or special characters
    - case sensitive
    - after first letter, you can use numbers, dash or underscores

Float: represents an integer or decimal number

String: represents text, it can contain letters, numbers, spaces and special characters, delimited by single or double quotes

> use "print" to display a variable

Function: an action that turns an input into an output; for ex. "pd.read_csv()" turns a csv file into a table in Python / "plt.plot()" turns data into a line plot / "plt.show()" displays plot in a new windows

![image](https://user-images.githubusercontent.com/75806093/127634671-52f0da06-06b6-4d39-bfe8-23bd26d7646d.png)

Anatomy of a function:

- Function name: starts with the module that the function "lives" in, followed by the name of the function, followed by parentheses
- Positional arguments: inputs to a function, order matters, each item separated by comma
- Keyword arguments: must come after positional arguments, start with the name and then an equals sign, followed by the argument

### Loading data in pandas

Pandas: a module that can do multiple things

- loading tabular data from different sources
- search for a particular rows or columns
- calculate aggregate statistics
- combining data from multiple sources

DataFrame: tabular data (for ex. csv)

To load a CSV

```python
variableName = pd.read_csv('filename.csv')
print(varName)
```

To inspect a DataFrame

```python
print(varName.head())

print(varName.info())
```

> these are called "methods"

Selecting columns

- to use them in a calculation
- to plot data

columns names are strings, we can select them in two ways:

* with square brackets and string
* with a dot

Selecting rows with logic

Logical statements: Python returns Booleans, True or False

Other types of logic are maths symbols such as <, <=, >, >=, ==, !=

using logic with DataFrames
> DataFrame Name and then into Brackets the logical statement

### Plotting data with matplotlib

Matplotlib

- to create line plots, we need to import matplotlib

```python
from matplotlib import pyplot as plt

plt.plot(x_values, y_values)
plt.show() # to display
```

![image](https://user-images.githubusercontent.com/75806093/127733911-6dfb2279-f842-489f-b263-af0af843abb0.png)

Multiple lines

![image](https://user-images.githubusercontent.com/75806093/127733958-5ffa9edc-c474-40d0-a208-45c389295d3d.png)

Adding text to plots

```python
plt.xlabel("Letter")
plt.ylabel("Frequency")
plt.title("xxx")
```

> labels anywhere in the code but before the command plt.show()

Legends

![image](https://user-images.githubusercontent.com/75806093/127734209-8567319e-a887-4503-90bf-5c3ab334e6d2.png)

Arbitrary text

```python
plt.text(xcoord, ycoord, "Text")
```

Modifying text

![image](https://user-images.githubusercontent.com/75806093/127734259-a3ff1df8-a341-4d81-a44c-51232f62de93.png)

Styling graphs

![image](https://user-images.githubusercontent.com/75806093/127734498-8bd6af51-4a52-47b5-bb0a-a07e782d6bcd.png)

![image](https://user-images.githubusercontent.com/75806093/127734520-84614bfa-fe9e-4b62-9647-8d636ef554d3.png)

![image](https://user-images.githubusercontent.com/75806093/127734531-fc7578e1-93dc-4cca-a598-07ab07740907.png)

![image](https://user-images.githubusercontent.com/75806093/127734548-baf4360e-8065-4168-8e0f-4eca82e65cd9.png)

![image](https://user-images.githubusercontent.com/75806093/127734559-50950f52-0991-4ce7-a4eb-515e2dc221cf.png)

### Different types of Plots

Scatter plots

![image](https://user-images.githubusercontent.com/75806093/127735572-fe630d52-d734-4732-9e0c-b45c677d3762.png)

```python
plt.scatter(data.x, data.y)
plt.xlabel('x')
plt.ylabel('y')
plt.show
```

> keyword arguments are basically the same seen before like color, marker etc.

- alpha=number defines the transparency of the dots

Bar charts

```python
plt.bar(data.x, data.y)
plt.show()
```

Horizontal bar chart

```python
plt.barh(data.x, data.y)
```

![image](https://user-images.githubusercontent.com/75806093/127735795-a047dbb4-655b-42fe-9585-5bc26b1dca55.png)

Stacked bar charts

use the keyword 'bottom'

![image](https://user-images.githubusercontent.com/75806093/127735852-895ce8a6-b8e0-4b78-8a3e-dfa78931ed22.png)

Histograms

```python
plt.hist(data)
plt.show
```

> by default, matplotlib will create 10 different bins

```python
plt.hist(data, bins=nbins)
```

> use the keyword 'range' to change the range to visualize in the plot

```python
plt.hist(data, range=(xmin, xmax))
```

Normalizing

> use the keyword 'density' = True
![image](https://user-images.githubusercontent.com/75806093/127736414-abb81217-8e1f-46b1-b48e-1ef6e5eb577a.png)

### Recap

![image](https://user-images.githubusercontent.com/75806093/127736539-9d764497-c375-437a-a573-bcabcc84d0aa.png)

![image](https://user-images.githubusercontent.com/75806093/127736554-8561b0eb-187d-4f91-b48d-8b9e172131d9.png)

![image](https://user-images.githubusercontent.com/75806093/127736570-1259e1cd-10f4-4c66-ad87-a9a2cfdfe1d7.png)

![image](https://user-images.githubusercontent.com/75806093/127736586-e5c0ae86-b27a-47ba-b33d-8952488382d8.png)

![image](https://user-images.githubusercontent.com/75806093/127736602-0dd69a20-5c1c-4992-816b-c0ebe2f8c6f3.png)

## <a id="data-types"></a>Data Types for Data Science in Python

### Fundamental data types

Container sequences
- hold other types of data
- used for aggregation, sorting, and more
- can be mutable (list, set) or immutable (tuple)
- iterable

Lists
- hold data in order it was added
- mutable
- index
- []

> .append() is used to access a single item in a list
> using operators you can combine two lists into a new one
> .extend() is a method that merges a list into another list at the end
> .index() is a method that locates the position of a data element in a list
> .pop() is a method that removes an item from a list and allows you to save it
> for loops are the most common way of iterating over a list
> sorted() is a function that sorts data in numerical or alphabetical order and return a new list

Tuples
- hold data in order
- index
- immutable
- pairing
- unpackable
- ()

> tuples are commonly created by zipping lists together with zip()
> unpacking tuples is a very expensive way for working with data; unpacking is especially powerful in loops
> another useful tuple creation method is the enumerate() function; it's used in loops to return the position and the data in that position while looping
> use zip(), enumerate(), or () to make tuples

Sets
- unique
- unordered
- mutable
- python's implementation of set theory from math

> sets are created from a list
![image](https://user-images.githubusercontent.com/75806093/127837249-0de2ab5f-d5f3-4ca8-a2b0-14d20ebb39cc.png)
> .add() adds single elements
> .update() merges in another set or list
> .discard() safely removes an element from the set by value
> .pop() removes and return an arbitrary element from the set
> .union() set method returns a set of all the names (or)
> .intersection() method identifies overlapping data (and)
> .difference() method identifies data present in the set on which the method was used that is not in the arguments (-)

### Dictionaries - the root of Python

Dictionaries
- hold data in key/value pairs
- nestable (use a dictionary as the value of a key within a dictionary)
- iterable
- created by dict() or {}

> getting a value from a dictionary is done using the key as an index
> if you ask for a key that does not exist that will stop your program from running in a KeyError
> .get() method allows you to safely access a key without error or exception handling; if a key is not in the dictionary .get() returns None by default or you can supply a value to return
> the .keys() method shows the keys for a given dictionary
> common way to deal with repeating data structures (accessing nested data); can be accessed using multiple indices or the .get() method

> .update() method to update a dictionary from another dictionary, tuples or keywords
> del instruction deletes a key/value
> .pop() method safely removes a key/value from a dictionary

> .items() method returns an object we can iterate over
> in operator is much more efficient and clearer than .get()

```python
'key' in dictionary
```

CSV files (comma separated value)
> python csv module
> open() function provides a variable that represents a file, takes a path and a mode
> csv.reader() reads a file object and returns the lines from the file as tuples
> .close() method closes file objects

```python
import csv
csvfile = open('file_name.csv', 'r')
for row in csv.reader(csvfile):
  print(row)
```

> from csv file to dictionary -> DictReader

```python
for row in csv.DictReader(csvfile):
  print(row)
```

### Meet the collections module

Collections module
- part of standard library
- advanced data containers

Counter
- special dictionary used for counting data, measuring frequency

```python
from collections import Counter
```

> .most_common() method returns the counter values in descending order

> defaultdict: pass it a default type that every key will have even if it doesn't currently exist, works exactly like a dictionary

```python
from collections import defaultdict
```

> OrderedDict is a function that, regardless Python's version, order a dictionary
> you can use the last=False keyword argument to return the items in insertion order

namedtuple
- a tuple where each position (column) has a name

> to create a namedtuple -> pass a name and a list of fields
> each field is available as an attribute of the namedtuple

```python
from collections import namedtuple
var = namedtuple('field', ['x', 'y' ...])
```

### Handling Dates and Times

> datetime module is part of the python standard library; use the datetime type from inside the datetime module
> .strptime() method converts from a string to a datetime object

```python
from datetime import datetime
print(event)
```

![image](https://user-images.githubusercontent.com/75806093/128155202-2190e30c-3cb2-4753-8fdc-d27178f36fb6.png)

![image](https://user-images.githubusercontent.com/75806093/128154781-3537b8e7-cdc5-4763-a75c-af308f0a4ca0.png)

> .strftime() method uses a format string to convert a datetime object to a string
```python
date_dt.strftime('%m/%d/%Y')
```

> .isoformat() method outputs a datetime as an ISO standard string

Datetime components:
> day, month, year, hour, minute, second, and more are available from a datetime instance; great for grouping data
> .now() method returns the current local datetime
> .utcnow() method returns the current UTC datetime

![image](https://user-images.githubusercontent.com/75806093/128156730-00f0d649-531b-45ab-aaa7-e358be1b9ef7.png)

Timezones
- naive datetime objects have no timezone data
- aware datetime objects have a timezone
- timezone data is available via the pytz module via the timezone object
- aware objects have .astimezone() so you can get the time in another timezone

> timedelta is used to represent an amount of change in time
> used to add or subtract a set amount of time from a datetime object

```python
from datetime import timedelta
flashback = timedelta(days=90)
print(record_dt)
```

> use the - operator to calculate the difference; returns a timedelta with the difference

![image](https://user-images.githubusercontent.com/75806093/128158038-a071f3a7-d140-456c-bae6-51bd271169ed.png)

> .parse() will attempt to convert a string to a pendulum datetime object without the need of the format string

![image](https://user-images.githubusercontent.com/75806093/128158724-04c1d7e4-1c1e-4e89-a755-3981634f8ac3.png)

> .in_timezone() method converts a pendulum time object to a desired timezone
> .now() method accepts a timezone you want to get the current time in
> .in_XXX() method provide the difference in a chosen metric
> .in_words() provides the difference in a nice expressive form
> .in_days() ; .in_hours()

### Answering Data Science Questions

practical exercises

## <a id="data-manipulation-pandas"></a>Data Manipulation with pandas

### Transforming DataFrames

pandas is built on NumPy and Matplotlib, designed to work with tabular/rectangular data

> .head() returns the first few rows (the “head” of the DataFrame)
> .info() shows information on each of the columns, such as the data type and number of missing values
> .shape outputs the number of rows followed by the number of columns
> .describe() calculates a few summary statistics for each column
> .values a two-dimensional NumPy array of values
> .columns contains columns name
> .index contains row numbers or row names

Sorting
> .sort_values("column-name") returns that columns sorted
> setting ascending=False will result in the other way of order
> you can add multiple columns to be sorted (["column-name1", "column-name2"])

```python
import pandas as pd
dataframeex.sort_values("column-name", ascending=False)
```

Subsetting
> to select multiple columns: dataframename[["column1", column2"]]

![image](https://user-images.githubusercontent.com/75806093/128493297-a89593f7-9c4f-46f1-b54d-2891ae448a12.png)

> we can subset rows based on text, dates, numbers, multiple conditions (combining conditions with operators), ecc.
> .isin()

### Aggregating DataFrames

Summary statistics

- numerical data
> mean, median...
> data["x"].mean()
> same process with .meadian() ; .mode() ; .min() ; .max() ; .var() ; .std() ; .sum() ; .quantile()
> .agg() creates custom aggregates statistics
> cumulative statistics: .cumsum() ; .cummax() ; .cummin() ; .cumprod()

> .drop_duplicates(subset=["x", "y"]) remove duplicates
> .value_counts() ; as argument in () you can use normalize or sort

> .groupby

Pivot tables
> .pivot_table(values="", index="")
> .pivot_table(values="", index="", aggfunc=[np.mean, np.median, ...])
> .pivot_table(values="", index="", columns="")
> .pivot_table(values="", index="", columns="", fill_value=0, margins=True)

### Slicing and Indexing DataFrames

> setting an index -> .set_index() ; .reset_index() to undo it
> .loc

- index values are just data
- indexes violate "tidy data" principles
- you need to learn two syntaxes

Slicing a list
> listName[startNum:endNum]
> [:] returns the whole list
> [:num] start from the beginning
> the same can be done with names, dates (even partial)
> .loc[num:num, num:num] to slice by row/column

Working with pivot tables
> .mean(axis="index") means calculate the statistics across rows
> .mean(axis="columns")

### Creating and Visualizing DataFrames

Histograms

```python
import matplotlib.pyplot as plt
dataName["colName"].hist()
plt.show()
```

> with bins=num arguments you can choose the number of bars

Bar plots

> .plot(kind="bar")
> .plot(kind="bar", title="")

Line plots

> .plot(x="", y="", kind="line", rot=45)

Scatter plots

> .plot(x="", y="", kind="scatter")

Layering plots

> you can plot two or more plots at the same time, use the argument alpha=num to use transparency 
> plt.legend(["", ""])

Missing values

> in pandas DataFrames missing values are indicated with NaN (not a number)
> .isna()
> .isna().any()
> .isna().sum()
> .dropna()
> .fillna(value)

Dictionaries

```python
my_dict = {
    "key1": value1,
    "key2": value2
}
```

> to access values from the dictionary -> my_dict["key1"]

![image](https://user-images.githubusercontent.com/75806093/128936006-eba70a1f-1777-4c41-88c0-f6770fb3e50e.png)

- method 1

```python
list_of_dicts = [
    {"key1": "value1", "key2": "value2", ...},
    {"key1": "value1", "key2": "value2", ...},
]
```

> once you have a list of dictionaries, to transform it into a dataframe: name = pd.DataFrame(liat_of_dicts)

- method 2

key = column name ; value = list of column values

```python
dict_of_lists = {
    "key1": ["value1", "value2"],
    "key2": ["value1", "value2"]
}
```

> once you have that, name = pd.DataFrame(dict_of_lists)

CSV files

> DataFrame to CSV --> .to_csv('fileName')

## <a id="python-ds-toolbox-1"></a>Python Data Science Toolbox 1

### Writing your own functions

Defining a function

```python
def functionName(): # <- function header
    value = num ** num # <- function body 
    print(value)
functionName()
```

function parameters
> add them in the parenteses of the function name, in the function header
> return values from a function using return keyword

- docstrings are used to describe what your function does; it also serves as documentation for your function; placed in the immediate line after the function header; in between triple double quotes """xxx"""

> functions accept more than 1 parameter

```python
def function_name(value1, value2):
    """docstring."""
    new_value = value1 ** value2
    return new_value
```

> the function can also return a tuple; instead of new_value, new_tuple = ()

### Default arguments, variable-length arguments and scope

- not all objects are accessible everywhere in a script
- Scope - part of the program where an object or name may be accessible
  - Global Scope - defined in the main body of a script
  - Local Scope - defined inside a function
  - Built-in Scope - names in the pre-defined built-ins module

> global new_var ; the keyword global define an object as global even when inside a function

Nested functions
> we can define an inner function, there are many reasons in which that could be useful

> non local ; keyword 

> to define a function with a default argument value, in the function header we follow the parameter of interest with an equals sign and the default argument value
> def function(*args): 
> def function(**kwargs): 

### Lambda functions and error-handling

Lambda functions
> add the keyword lambda, allow you to write functions in a quick way

Error handling
- exceptions - caught during execution
- catch exceptions with try-except clause
  - runs the code following try
  - if there's an exception, run the code following except
- the keyword raise is useful to return an error in the desired cases

> try ; except

## <a id="python-ds-toolbox-2"></a>Python Data Science Toolbox 2

### Using iterators in PythonLand

Iterating with a for loop
- we can iterate over a range object using a for loop

Iterable
> an object with an associated iter() method
> applying iter() to an iterable creates an iterator
Iterator
> produces next value with next()

![image](https://user-images.githubusercontent.com/75806093/130042910-5961b731-be0c-4b27-a8b9-7fec804af7db.png)

> the star operator [*] iterates through all values [*]

> enumerate() ; argument start=num
> zip()

Using iterators to load large files into memory

- one solution where there are too much data to hold in memory is to load data in chunks
- pandas function: read_csv(); specify the chunk: chunk_size

![image](https://user-images.githubusercontent.com/75806093/130053505-e5e86f16-3b56-45c0-9bcb-19fe9125f320.png)

### List comprehensions and generators

- collapse for loops for building lists into a single line
- components
  - iterable
  - iterator variable (represent members of iterable)
  - output expression
- inside the square brackets put the desired output
- you can use list comprehension for every iterable item, like with range() for example
- you can also make work nested loops
- tradeoff: readability

List comprehension
![image](https://user-images.githubusercontent.com/75806093/130590869-90ea3ea2-c7a8-4362-a13b-a2afd0982093.png)

![image](https://user-images.githubusercontent.com/75806093/130590952-f01c473d-5491-402d-8ad7-cf9dfa93f51f.png)

![image](https://user-images.githubusercontent.com/75806093/130591478-02c597d4-db8a-48e1-b254-5dc18a8f3a3c.png)

- conditionals in comprehensions
  - conditionals on the iterable
  - conditionals on the output expression

Dict comprehensions
- create dictionaries
- use curly braces {} instead of brackets

Generator expressions
- use ( ) instead of []
- list comprehension returns a list ; generators returns a generator object
- both can be iterated over

Generator functions
- produces generator objects when called
- defined like a regular function - def
- yields a sequence of values instead of returning a single value
- generates a value with yield keyword

![image](https://user-images.githubusercontent.com/75806093/130594241-b7eafa8c-7e0c-43c2-baf1-48368f1b1327.png)

Recap

![image](https://user-images.githubusercontent.com/75806093/130596152-816f0b42-b032-4589-9cc6-f6d93997df33.png)

### Bringing it all together!

-

## <a id="writing-efficient-python-code"></a>Writing efficient Python code

### Foundations for efficiencies

Efficient -> minimal completion time (fast runtime) ; minimal resource consumption (small memory footprint)

![image](https://user-images.githubusercontent.com/75806093/132308904-ec45dd05-2119-45cd-b78b-2095adf0b7a3.png)

Pythonic code is efficient code

![image](https://user-images.githubusercontent.com/75806093/132308989-cfa0fc59-f65f-43c7-a2de-89b58a910181.png)

Built-ins components - Python standard library

![image](https://user-images.githubusercontent.com/75806093/132309632-6819d34d-0259-40bd-bb2c-bb99ce17046f.png)

> range(start, stop, step); useful to create a list in a range, the stop value is exclusive, this function could also use a step number
> enumerate(); creates an indexed list of objects, keyword argument start
> map(); applies a function over an object, map() with lambda

NumPy arrays

- alternative to Python lists
- np.array()
- they are homogeneus, they must contain elements of the same type
- Python lists don't support broadcasting, 

![image](https://user-images.githubusercontent.com/75806093/132312127-4369b3bf-8b6f-4196-adb1-82ba8a7c7d3e.png)

![image](https://user-images.githubusercontent.com/75806093/132312233-d2454de5-52ad-4b71-95e6-1fe4f5b89a77.png)

![image](https://user-images.githubusercontent.com/75806093/132312327-b97fb75c-4858-46f6-a6ee-2324015387a7.png)

### Timing and profiling code

Examining runtime

> magic commands: enhancements on top of normal Python syntax
> prefixd by the "%" character, see all available magic commands with %lsmagic

> calculate runtime with IPython magic command %timeit

![image](https://user-images.githubusercontent.com/75806093/132319446-74b1dcad-9036-43e7-ae6b-89ce40cfa6be.png)

![image](https://user-images.githubusercontent.com/75806093/132319506-8bdd8486-b369-44f2-844f-96be5dec4f91.png)

> specifying number of runs/loops -> setting the number of runs(-r) and/or loops(-n)

![image](https://user-images.githubusercontent.com/75806093/132319715-f5c274a3-7a91-4478-8a58-ffa02ef1f9f0.png)

![image](https://user-images.githubusercontent.com/75806093/132319780-fc90bd8d-092f-4cce-9505-896aee93d6c8.png)

![image](https://user-images.githubusercontent.com/75806093/132319823-b8a6cefd-f309-4127-ac7c-67e2dfc7854e.png)

> saving the output to a variable(-o)

![image](https://user-images.githubusercontent.com/75806093/132319927-cfc9a3b3-5b7e-4058-9a89-d2eeb317616b.png)

Code profiling:
- detailed stats on frequency and duration of function calls
- line-by-line analyses
- package used: line_profiler
- pip install line_profiler

![image](https://user-images.githubusercontent.com/75806093/132321459-8be794c3-05f8-473a-8b37-b3129c9d31d4.png)

![image](https://user-images.githubusercontent.com/75806093/132321516-e85d9cb9-f43d-4906-b662-9ed967db0682.png)

Code profiling for memory usage:
- import sys
- detailed stats on memory consumption
- line-by-line analyses
- package used: memory_profiler
- pip install memory_profiler

![image](https://user-images.githubusercontent.com/75806093/132322143-ddf6acba-7569-484d-98c5-5e075153d882.png)

![image](https://user-images.githubusercontent.com/75806093/132322343-cf116215-939b-464d-a173-1ac1c6ffea00.png)

![image](https://user-images.githubusercontent.com/75806093/132322491-224d2343-140c-40ec-a6b4-3185367c5ac1.png)

![image](https://user-images.githubusercontent.com/75806093/132322741-1d0787c9-5faa-4f42-9727-18bfc1315a03.png)

### Gaining efficiencies

Combining objects

![image](https://user-images.githubusercontent.com/75806093/132328951-497ef65c-0789-44ec-b31d-42c3c00ce3ce.png)

> zip()

![image](https://user-images.githubusercontent.com/75806093/132329013-0d5154fd-fff6-4ecd-b37f-a026a7b8b740.png)

> the collections module

![image](https://user-images.githubusercontent.com/75806093/132329088-bd02ab9c-8f33-49ba-bfdf-aaf972deb8b5.png)

> the itertools module

![image](https://user-images.githubusercontent.com/75806093/132329338-9b1c338f-3c5b-4114-a874-2ea28ec44c49.png)

Set theory

- branch of math applied to collections of objects: sets

![image](https://user-images.githubusercontent.com/75806093/132344559-eea7a72a-8d15-411a-bd9e-1b5996006d3d.png)

> transform the lists in sets and then use:
> .intersection
> .difference
> .symmetric_difference
> .union

Eliminating loops

![image](https://user-images.githubusercontent.com/75806093/132345818-aecb3a3c-0fbe-4417-b7cc-9962eb8699f1.png)

- we should try to avoid loops, especially nested, when writing efficient code

Writing better loops:
- move calculations outside the loop
- use holistic conversions

### Basic pandas optimizations

> .iterrows()
> .itertuples()

pandas alternative to looping
> .apply()

![image](https://user-images.githubusercontent.com/75806093/132399384-b05a9cf1-b08d-4330-9005-518c5691ce33.png)

## <a id="working-dates-times"></a>Working with Dates and Times in Python

### Dates and Calendars

![image](https://user-images.githubusercontent.com/75806093/133882381-1203d591-0c57-4621-be4b-42e3f259bdea.png)

![image](https://user-images.githubusercontent.com/75806093/133882388-7b8ffc21-631b-4222-b1c5-6a62374625eb.png)

![image](https://user-images.githubusercontent.com/75806093/133882608-1a8fec0d-e25f-4b0a-a8e3-fe66487e65d8.png)

![image](https://user-images.githubusercontent.com/75806093/133882613-0c120156-f88d-4599-b8fd-d993843e1511.png)

![image](https://user-images.githubusercontent.com/75806093/133882596-2b7f08d9-f524-4d5a-918a-87b0c34f515d.png)

ISO 8601 format
- YYYY-MM-DD

![image](https://user-images.githubusercontent.com/75806093/133882756-c411b8cc-6133-48c7-a4b3-fb84845599ea.png)

Other format:

> .strftime

![image](https://user-images.githubusercontent.com/75806093/133882796-39204f18-2d94-48a5-8005-c276057b2f6f.png)

### Combining Dates and Times

![image](https://user-images.githubusercontent.com/75806093/133884424-c3068746-4fd6-47eb-b24f-3cd45721e18b.png)

![image](https://user-images.githubusercontent.com/75806093/133884436-f4333954-0229-4c98-81ea-bc08c5fb1302.png)

![image](https://user-images.githubusercontent.com/75806093/133884444-e5479d2d-bd74-45a6-8e45-9e2302f6944b.png)

![image](https://user-images.githubusercontent.com/75806093/133884593-ddffb36f-8681-4f38-a2a1-e1370c17fdb5.png)

![image](https://user-images.githubusercontent.com/75806093/133884631-612bc2dd-8554-4fa0-b934-8365fceae815.png)

![image](https://user-images.githubusercontent.com/75806093/133884667-7c7d1b74-ba77-48ec-a339-cb8ce1658a04.png)

Durations

![image](https://user-images.githubusercontent.com/75806093/133884911-6a213fa5-9b2a-4cca-96e3-f1aca464fb61.png)

![image](https://user-images.githubusercontent.com/75806093/133884902-dd8ba150-2291-4b82-8d19-732a2b5bd4b6.png)

![image](https://user-images.githubusercontent.com/75806093/133884935-4bf3ca56-afc3-4bad-80d1-e491aa33fe7d.png)

![image](https://user-images.githubusercontent.com/75806093/133884948-29b3d982-8f36-484d-993a-fa27b2896fd5.png)

![image](https://user-images.githubusercontent.com/75806093/133884961-8bcf9a31-2311-45a6-b7d8-e096bbb57777.png)

![image](https://user-images.githubusercontent.com/75806093/133884965-482c2f1a-a37f-4e63-bd5f-6abcc77ad67a.png)

### Time Zones and Daylight Saving

UTC

![image](https://user-images.githubusercontent.com/75806093/133922682-5552fcc7-85da-4d8b-9283-88156db580bb.png)

![image](https://user-images.githubusercontent.com/75806093/133922706-b89e2bb5-802e-4e46-bff8-b07bcf7050de.png)

Time zone database

![image](https://user-images.githubusercontent.com/75806093/133922895-a636764f-1d04-448b-a458-30f20421b12e.png)

> tz database --> format 'Continent/City'

![image](https://user-images.githubusercontent.com/75806093/133922912-5876ce3b-77ed-4c74-8d31-7d252fcc33e1.png)

Daylight saving time

![image](https://user-images.githubusercontent.com/75806093/133923126-6b0e0b87-a214-4f8b-a41e-1ef33db96c31.png)

![image](https://user-images.githubusercontent.com/75806093/133923142-307ae5a4-e79d-4aee-970a-62b3239a4392.png)

![image](https://user-images.githubusercontent.com/75806093/133923147-81d9a9f3-20d0-44ac-abad-0958627018d6.png)

![image](https://user-images.githubusercontent.com/75806093/133923167-de8cf962-9b80-44fe-b541-d01604c15fd3.png)

![image](https://user-images.githubusercontent.com/75806093/133923299-1a750643-9704-4bfa-a929-452a14518408.png)

![image](https://user-images.githubusercontent.com/75806093/133923314-14b6132b-cac1-45d1-a746-2c0877b1beed.png)

### Easy and Powerful: Dates and Times in Pandas

![image](https://user-images.githubusercontent.com/75806093/133927416-c4d11b7a-1f43-4392-8a77-b2f5606d16b1.png)

![image](https://user-images.githubusercontent.com/75806093/133927431-ae69ef22-5705-4518-ab48-73e75e7d40a0.png)

![image](https://user-images.githubusercontent.com/75806093/133927440-274454ad-4fd7-4185-8653-3c5e8301d90c.png)

![image](https://user-images.githubusercontent.com/75806093/133930624-b2426ccc-0ec8-4bc3-af11-d741d8a04a97.png)

![image](https://user-images.githubusercontent.com/75806093/133930640-7ea69500-64e1-4256-84c6-2b1ec0d60542.png)

![image](https://user-images.githubusercontent.com/75806093/133930652-2a01e51e-6435-4839-8331-f28adeea0f95.png)

![image](https://user-images.githubusercontent.com/75806093/133930667-33875e95-e153-4c8f-8cf1-be32d4eb017e.png)

![image](https://user-images.githubusercontent.com/75806093/133930674-60a5a8cb-f89c-4c41-a82b-e00f82766f25.png)

![image](https://user-images.githubusercontent.com/75806093/133930686-8072b9cc-e383-49f2-8baf-295b6c67ce15.png)

![image](https://user-images.githubusercontent.com/75806093/133930750-64ea661b-538f-452d-b5a0-d62bbb947b94.png)

![image](https://user-images.githubusercontent.com/75806093/133930769-8e8f70e3-c6a6-490e-a2b0-cd94ab4a7d22.png)

![image](https://user-images.githubusercontent.com/75806093/133930779-d3d3ee23-70f9-48e4-8917-2f99bca1d6eb.png)

![image](https://user-images.githubusercontent.com/75806093/133930801-401fd867-e3e5-40d9-95ec-9315b73deb7d.png)

![image](https://user-images.githubusercontent.com/75806093/133930814-30ea565f-5a74-4f46-93b8-b071f08e4bbc.png)

![image](https://user-images.githubusercontent.com/75806093/133930826-e64edf7d-3fc8-49ca-ac3b-23d531ee51d0.png)

Recap

![image](https://user-images.githubusercontent.com/75806093/133930887-42603085-5709-4429-a02c-0de5291de493.png)

![image](https://user-images.githubusercontent.com/75806093/133930894-f9d28847-9493-4a54-b05a-86483eb91628.png)

![image](https://user-images.githubusercontent.com/75806093/133930900-bf84eae2-6b82-4440-a6ce-edb72f37f617.png)

![image](https://user-images.githubusercontent.com/75806093/133930917-a9603132-b895-495b-a758-f38a044a3703.png)

## <a id=#regular-expressions></a>Regular Expressions in Python

### Basic Concepts of String Manipulation

![image](https://user-images.githubusercontent.com/75806093/133979262-c26675f2-a22c-49c1-815c-058d7fb440b7.png)

Strings
- sequence of characters
- quotes

![image](https://user-images.githubusercontent.com/75806093/133979345-c3bf2ab3-282f-472a-be53-0095b5b0a5bf.png)

> length --> len(my_string)
> convert to string --> str(123)
> concatenation --> concatenate with + operator
> indexing --> bracket notation

![image](https://user-images.githubusercontent.com/75806093/133979566-27f2edbb-817a-4da6-b306-ffa323796213.png)

> slicing --> bracket notation

![image](https://user-images.githubusercontent.com/75806093/133979612-3892a04c-13f3-4c75-8b85-303e9fd34be5.png)

> stride --> specifying stride

![image](https://user-images.githubusercontent.com/75806093/133979669-4527ce4e-7997-495d-8515-65b7044c88e5.png)

> convert to lowercase --> .lower
> convert to uppercase --> .upper

![image](https://user-images.githubusercontent.com/75806093/133982151-9e0e3d59-8cca-4992-b211-a5516d926be1.png)

> capitalizing the first character --> .capitalize

![image](https://user-images.githubusercontent.com/75806093/133982203-dd14941c-d31d-435b-b3b7-d8fb3e0ef69c.png)

> splitting a string into a list of substrings --> .split and .rsplit

![image](https://user-images.githubusercontent.com/75806093/133982280-b3b0c5fc-1cd3-40ae-a2c0-adfa0205c378.png)

![image](https://user-images.githubusercontent.com/75806093/133982332-239a3c1e-2084-400c-aa2f-d3d6098e1703.png)

![image](https://user-images.githubusercontent.com/75806093/133982377-d40018a6-a6b9-4da5-8d0a-b6f906b3abd3.png)

![image](https://user-images.githubusercontent.com/75806093/133982462-4718be26-63ba-473a-ae12-24b81e42752f.png)

![image](https://user-images.githubusercontent.com/75806093/133982537-448c66e8-30d2-4c7c-a446-3601e27ba86d.png)

![image](https://user-images.githubusercontent.com/75806093/133982570-1d494164-df4f-4080-b092-0c0c5c6efc27.png)

Finding substrings

![image](https://user-images.githubusercontent.com/75806093/133983370-78c76efd-15ad-4b63-a677-7443edefaad2.png)

![image](https://user-images.githubusercontent.com/75806093/133983414-b7402049-7661-4376-b8be-c25a1bec5508.png)

![image](https://user-images.githubusercontent.com/75806093/133983483-06795b41-ae4d-4907-818c-db6a8caceeb6.png)

![image](https://user-images.githubusercontent.com/75806093/133983527-daacaa5c-a54b-4a21-93c0-1cdcd7485f61.png)

Counting occurrences

![image](https://user-images.githubusercontent.com/75806093/133983604-8720e47d-690d-4b23-9504-a03b39e1f40c.png)

Replacing substrings

![image](https://user-images.githubusercontent.com/75806093/133983704-796be704-6c60-45b9-b1f0-4817e88ecadc.png)

### Formatting Strings

Positional formatting

![image](https://user-images.githubusercontent.com/75806093/133985713-2b710fd1-8b1d-4975-88fb-41d04d7de297.png)

Methods for formatting:
- positional formatting
- formatted string literals
- template method

![image](https://user-images.githubusercontent.com/75806093/133985862-b18c82e1-f419-49d9-bb98-8b3eaacb4e8a.png)

![image](https://user-images.githubusercontent.com/75806093/133985933-8476016d-8129-458f-81cf-0cfad5e9ee4d.png)

![image](https://user-images.githubusercontent.com/75806093/133985971-96650131-58ca-44f7-9d70-ba1dac5dddbd.png)

![image](https://user-images.githubusercontent.com/75806093/133986020-911aea3b-7629-466c-9660-e6344065c973.png)

![image](https://user-images.githubusercontent.com/75806093/133986105-c1e67729-3c72-497e-8465-3b433b22656f.png)

![image](https://user-images.githubusercontent.com/75806093/133986190-03a63784-af7c-4102-8d78-329638fd5146.png)

![image](https://user-images.githubusercontent.com/75806093/133986225-12c11a1e-0447-425d-8caf-e707363c9048.png)

f-strings

![image](https://user-images.githubusercontent.com/75806093/133987193-d00ccbbf-5a6e-4ad0-ad4f-1221c56b67e8.png)

![image](https://user-images.githubusercontent.com/75806093/133987258-fba28197-bca3-4374-8f81-7d3d5df9bc05.png)

![image](https://user-images.githubusercontent.com/75806093/133987302-df5733b5-1243-492a-b685-653ec2f4d093.png)

![image](https://user-images.githubusercontent.com/75806093/133987359-24208aae-20a0-4590-a8ad-27829bb15d91.png)

![image](https://user-images.githubusercontent.com/75806093/133987388-dd7a4bb3-92a7-4fd9-860d-b8865d41249e.png)

Escaoe sequences

![image](https://user-images.githubusercontent.com/75806093/133987426-d8856b24-c59e-48e2-bb84-9bb9c9bd0637.png)

![image](https://user-images.githubusercontent.com/75806093/133987488-bd23e66e-70b3-4897-89c7-322c66f82c40.png)

![image](https://user-images.githubusercontent.com/75806093/133987541-03538ff8-4001-4c7a-b8d2-5c47f1deb43d.png)

![image](https://user-images.githubusercontent.com/75806093/133987581-2112b96f-6d61-4579-8b01-a1ed540425c3.png)

Template strings

![image](https://user-images.githubusercontent.com/75806093/134135135-37e89d01-3d17-4fb2-abeb-cb280ddbb3ab.png)

![image](https://user-images.githubusercontent.com/75806093/134135234-2bc1d2f0-620f-4365-bce1-ab7f4e63ffd4.png)

![image](https://user-images.githubusercontent.com/75806093/134135293-52109867-8fc5-40a8-a4ee-efffd5274f8b.png)

![image](https://user-images.githubusercontent.com/75806093/134135365-1e122e98-3361-405c-93b4-a85d7e36bf05.png)

![image](https://user-images.githubusercontent.com/75806093/134135391-ef46179f-5e26-4679-98a3-f5985d244207.png)

![image](https://user-images.githubusercontent.com/75806093/134135429-620a5ef0-083d-4c83-899e-58a1bafb5a25.png)

![image](https://user-images.githubusercontent.com/75806093/134135456-e51631e4-c004-4ad9-8c7f-b937b118504a.png)

![image](https://user-images.githubusercontent.com/75806093/134135509-560a4697-a11a-432a-a94f-bbf880a95e15.png)

![image](https://user-images.githubusercontent.com/75806093/134135563-e1d064df-9d1a-4beb-9af6-13fe17d847dd.png)

### Regular Expressions for Pattern Matching

Regular expression

![image](https://user-images.githubusercontent.com/75806093/134137769-e149ecb7-0d6d-4eeb-99d4-5fbfa64c7b8d.png)

![image](https://user-images.githubusercontent.com/75806093/134137833-0e9f1d0b-a803-426a-a3a1-8bd086b74d0e.png)

![image](https://user-images.githubusercontent.com/75806093/134137931-a52b269c-b0b8-4516-83c0-021ec9c6ee18.png)

![image](https://user-images.githubusercontent.com/75806093/134137979-dc7ff055-1ef4-4a19-aa38-71d2090be8d2.png)

re module

![image](https://user-images.githubusercontent.com/75806093/134138076-60b81f06-158b-4c47-b012-1f41ec5e5b4d.png)

![image](https://user-images.githubusercontent.com/75806093/134138140-86444bf2-0922-4617-88c8-57ad463138cd.png)

![image](https://user-images.githubusercontent.com/75806093/134138206-e30eaedf-ad69-44da-9d6a-470a48df224e.png)

Supported metacharacters

![image](https://user-images.githubusercontent.com/75806093/134138304-924405a0-5b67-44f1-a01a-27ab4b8ab7dc.png)

![image](https://user-images.githubusercontent.com/75806093/134138353-bb84e157-4694-427c-b97b-82d7bfb0d0a6.png)

![image](https://user-images.githubusercontent.com/75806093/134138387-6dbdde6e-d801-4c95-a304-54e8d15822b9.png)

Repetitions

![image](https://user-images.githubusercontent.com/75806093/134139626-eb0ae575-6894-4b4c-8fa8-78047c722bf5.png)

![image](https://user-images.githubusercontent.com/75806093/134139691-0fe8fad1-4def-470f-97b4-8bd29e79f6e6.png)

![image](https://user-images.githubusercontent.com/75806093/134139786-a0acace6-f28f-4390-a9bb-9a28e63d66e8.png)

![image](https://user-images.githubusercontent.com/75806093/134139872-d2e21960-2afa-4842-84cc-ffa50ba62543.png)

![image](https://user-images.githubusercontent.com/75806093/134139929-f88dc5d3-df4f-437c-80a2-6d4397f5e4af.png)

![image](https://user-images.githubusercontent.com/75806093/134140083-c9bc6261-a453-44f6-baba-a333083bf185.png)

![image](https://user-images.githubusercontent.com/75806093/134140126-5bd42a90-565d-4af9-8445-3ce0ceca7b72.png)

Regex metacharacters

![image](https://user-images.githubusercontent.com/75806093/134143378-04b0caf8-970d-4af7-b96c-7a7b5c53d483.png)

![image](https://user-images.githubusercontent.com/75806093/134143435-ede8fb07-8626-4634-b1b9-39fc6715ccbe.png)

![image](https://user-images.githubusercontent.com/75806093/134143497-e03b12d4-150d-4938-8c15-1582e2fa36b2.png)

![image](https://user-images.githubusercontent.com/75806093/134143572-48ee20c2-d496-4d47-9a3c-37f9997081a0.png)

![image](https://user-images.githubusercontent.com/75806093/134143622-fd86ba4e-5e98-4908-b23d-0c61e2bc0244.png)

![image](https://user-images.githubusercontent.com/75806093/134143680-5a89d0a4-b28e-4773-915e-fe2ef76a414f.png)

![image](https://user-images.githubusercontent.com/75806093/134143726-9a054d8c-703b-4a8f-bc19-5beb602a2f96.png)

![image](https://user-images.githubusercontent.com/75806093/134143822-06d5c604-b247-49b9-b4aa-99eb3b1b3689.png)

![image](https://user-images.githubusercontent.com/75806093/134143887-99542a91-454c-4e62-a385-d070f44f82ba.png)

![image](https://user-images.githubusercontent.com/75806093/134143935-a38af407-32c8-4eb8-b88d-0b44ca4e313a.png)

Greedy vs. non-greedy matching

![image](https://user-images.githubusercontent.com/75806093/134147477-2b67767f-bdff-4796-aa8b-6eea0aa994ff.png)

![image](https://user-images.githubusercontent.com/75806093/134147544-d041cc0c-75cf-441c-9547-f7344c4a897d.png)

![image](https://user-images.githubusercontent.com/75806093/134147675-d8ec8c79-afed-4e0b-9039-6e4b4e39bcf9.png)

![image](https://user-images.githubusercontent.com/75806093/134147760-a2de3216-4eb9-4378-8304-2359e294f6a0.png)

![image](https://user-images.githubusercontent.com/75806093/134147835-15d5e283-cf12-4898-9176-63688cdf695c.png)

### Advanced Regular Expression Concepts

Capturing groups

![image](https://user-images.githubusercontent.com/75806093/134149661-1c367cbc-95db-4685-a2c9-884a5aaf3517.png)

![image](https://user-images.githubusercontent.com/75806093/134149693-06248ed0-65ee-4919-b096-07b8dd2887c1.png)

![image](https://user-images.githubusercontent.com/75806093/134149743-9d16bb8a-541a-4400-a458-302cfb027c19.png)

![image](https://user-images.githubusercontent.com/75806093/134149803-c5ebb875-676a-462b-8d66-52df9218fd02.png)

![image](https://user-images.githubusercontent.com/75806093/134149840-9b49c03d-63d5-47b2-8df5-7647dc85e11f.png)

![image](https://user-images.githubusercontent.com/75806093/134149886-10a3ff8b-35ec-42d4-8e52-85d056aa7c3c.png)

![image](https://user-images.githubusercontent.com/75806093/134149940-3330ea80-ba76-45ce-b58e-4d4a505882b1.png)

![image](https://user-images.githubusercontent.com/75806093/134149972-4e85f534-94ce-4864-b7cb-815f086423e7.png)

![image](https://user-images.githubusercontent.com/75806093/134150026-3d97b1d6-b443-4c6d-bd8e-b83694537cc5.png)

Alternation and non-capturing groups

![image](https://user-images.githubusercontent.com/75806093/134150191-c52800c4-fd86-4775-9d71-dc7b05ecf7d4.png)

![image](https://user-images.githubusercontent.com/75806093/134150258-f799eeb1-59d4-4929-a183-40aa9dd49a44.png)

![image](https://user-images.githubusercontent.com/75806093/134150299-da8e9aa9-418f-42d7-af30-9c4cb2e0f3a1.png)

![image](https://user-images.githubusercontent.com/75806093/134150338-43d240ec-7df0-4d46-99fa-2149b46d6346.png)

![image](https://user-images.githubusercontent.com/75806093/134150395-dea9fe15-ca18-4518-a1ac-5a9dea5058fd.png)

![image](https://user-images.githubusercontent.com/75806093/134150425-0dbf61f1-3ba5-4c1c-ac12-97da7af1a4e6.png)

![image](https://user-images.githubusercontent.com/75806093/134150474-1b8b3e22-2bbe-4d2e-8c0f-af5c5d3304ee.png)

Backreferences

![image](https://user-images.githubusercontent.com/75806093/134150938-d7de53e9-2201-4d33-b913-c85f4c84d4ba.png)

![image](https://user-images.githubusercontent.com/75806093/134150972-a740d18d-2ee6-40fa-87b9-c4f224e324a5.png)

![image](https://user-images.githubusercontent.com/75806093/134151008-cb0f57b7-0d8e-4165-a424-2d3aa9bc068c.png)

![image](https://user-images.githubusercontent.com/75806093/134151049-5ed866b5-66ec-478f-92e6-d64fecb308fc.png)

![image](https://user-images.githubusercontent.com/75806093/134151097-3f9523a2-9a8b-4a34-b2c9-64f09606fa1d.png)

![image](https://user-images.githubusercontent.com/75806093/134151148-d52f27e5-a5f9-4cb1-8248-bb0efcce7d59.png)

![image](https://user-images.githubusercontent.com/75806093/134151192-e3c67e36-92e1-4f56-bbd2-d51c6edf21d2.png)

![image](https://user-images.githubusercontent.com/75806093/134151254-c9996809-7164-46af-8651-780c923ab863.png)

Lookaround

![image](https://user-images.githubusercontent.com/75806093/134151404-ffc2987e-4088-480b-a1bf-c21362b1fff6.png)

![image](https://user-images.githubusercontent.com/75806093/134151452-922fed97-5be1-42ef-8d69-213f5c97c7ca.png)

![image](https://user-images.githubusercontent.com/75806093/134151492-b7d35b0e-b1c7-4df5-80bc-c2b761b11b0d.png)

![image](https://user-images.githubusercontent.com/75806093/134151532-a92b1b04-c041-424e-b468-172812124a7b.png)

![image](https://user-images.githubusercontent.com/75806093/134151568-2538c4eb-7db9-4305-ac04-ee18930c9a39.png)

![image](https://user-images.githubusercontent.com/75806093/134151614-3fd7e278-68c3-43a8-8733-8e9204e27b2e.png)

![image](https://user-images.githubusercontent.com/75806093/134151647-5685435f-f7e8-47d7-acfe-01c7a17265b8.png)

## <a id=#web-scraping></a>Web Scraping in Python

### Introduction to HTML

Web Scraping Overview

Business Savvy

![image](https://user-images.githubusercontent.com/75806093/134178181-755901e1-52da-4cb5-8382-a4a110a24e42.png)

Personal

![image](https://user-images.githubusercontent.com/75806093/134178243-09750e4e-67b0-4f6d-ac8b-66e0bea1cd7a.png)

![image](https://user-images.githubusercontent.com/75806093/134178428-7c5ff0ac-5ac2-4030-9a68-1054b5f81836.png)

![image](https://user-images.githubusercontent.com/75806093/134178518-b9357573-50c4-426e-8383-921a298a35a2.png)

![image](https://user-images.githubusercontent.com/75806093/134178570-cf127c3d-c247-4db6-8a40-e09d0791a8ad.png)

![image](https://user-images.githubusercontent.com/75806093/134178619-f35a2818-789e-4f23-b4b4-7c227f9aae97.png)

![image](https://user-images.githubusercontent.com/75806093/134178704-8a4a9d3d-01f3-4a77-8256-d17fe8c38899.png)

HyperText Markup Language

![image](https://user-images.githubusercontent.com/75806093/134178913-deb72b6b-7596-4dd7-a43b-0d7eb1f9286c.png)

![image](https://user-images.githubusercontent.com/75806093/134178955-930a8719-be29-4b35-83d2-265301bfba72.png)

![image](https://user-images.githubusercontent.com/75806093/134179045-dd95c479-779b-46e3-b594-fc3feb7e3f34.png)

![image](https://user-images.githubusercontent.com/75806093/134179122-eae4185f-021b-43f8-a084-926a7cf28091.png)

Siblings and Children

![image](https://user-images.githubusercontent.com/75806093/134179183-824ea188-9c78-43b4-a897-3bb2b1d975b7.png)

![image](https://user-images.githubusercontent.com/75806093/134179268-1eab1426-7062-45dc-a49a-49f7474e754a.png)

Attributes

![image](https://user-images.githubusercontent.com/75806093/134180048-18b6a0d0-35c4-47d3-a453-7ebb47008fb6.png)

![image](https://user-images.githubusercontent.com/75806093/134180112-dc01ae16-ae0f-4a93-9b37-c3260fb6266a.png)

![image](https://user-images.githubusercontent.com/75806093/134180325-1a19466e-5622-4b62-bb90-4b4cf2e01785.png)

![image](https://user-images.githubusercontent.com/75806093/134180383-33767cdf-b242-443d-9c37-37517d8aa079.png)

Crash Course in XPath

![image](https://user-images.githubusercontent.com/75806093/134181079-bd88676a-daaa-425e-88ae-fef55b953b73.png)

![image](https://user-images.githubusercontent.com/75806093/134181163-6f6e20b0-c256-4096-9530-35d9a57d1d6a.png)

![image](https://user-images.githubusercontent.com/75806093/134181269-9081a1e2-7bf5-428e-a747-ca690e28d283.png)

### XPaths and Selectors

![image](https://user-images.githubusercontent.com/75806093/134182697-103479bb-ff54-4328-89aa-dbd624cc4cde.png)

![image](https://user-images.githubusercontent.com/75806093/134182752-df7342fc-d2b0-4630-b8ef-b9ecd4f579e4.png)

![image](https://user-images.githubusercontent.com/75806093/134182803-9ceef1ad-6ef3-4c0f-a907-8969e5db6314.png)

![image](https://user-images.githubusercontent.com/75806093/134182851-2b2cc140-f88b-4c41-86d9-fbf24db20ef2.png)

![image](https://user-images.githubusercontent.com/75806093/134182891-9f6a3145-1dab-4a3b-9503-693dbf386981.png)

![image](https://user-images.githubusercontent.com/75806093/134183183-66956b55-c2b1-4012-b955-45cd3f8dee8a.png)

Off the Beaten XPath

![image](https://user-images.githubusercontent.com/75806093/134183841-079b85cc-4f12-487e-a310-6592446450a8.png)

![image](https://user-images.githubusercontent.com/75806093/134183923-65120588-93a5-48cb-a0f1-37ff12aa4886.png)

![image](https://user-images.githubusercontent.com/75806093/134183983-73a1be2b-a4db-43de-98c4-786b8a38e3e2.png)

![image](https://user-images.githubusercontent.com/75806093/134184035-0f60812a-1fa7-4fb6-9e4e-91ed159cad77.png)

![image](https://user-images.githubusercontent.com/75806093/134184147-2e7297cd-4a63-42f5-ac29-fa041628157b.png)

![image](https://user-images.githubusercontent.com/75806093/134184183-87a8a514-eb64-45e3-86d2-06d603608665.png)

![image](https://user-images.githubusercontent.com/75806093/134184225-0784efa6-3906-4c6e-b9e9-b558388cb50b.png)

![image](https://user-images.githubusercontent.com/75806093/134184310-df6172f9-8301-48fb-bd0d-01989e57e593.png)

![image](https://user-images.githubusercontent.com/75806093/134184341-8c65be2f-f2f3-4e80-b984-40f17c3b2fb2.png)

Selector Objects

![image](https://user-images.githubusercontent.com/75806093/134185300-a7d4ca36-31ac-484d-a28b-fdf18cbcbfa4.png)

![image](https://user-images.githubusercontent.com/75806093/134185489-4689a3ec-c2c5-418a-931c-81748e5ab1b2.png)

![image](https://user-images.githubusercontent.com/75806093/134185610-f2fc6d26-ed24-4cdf-a5d5-c342c6feb57d.png)

![image](https://user-images.githubusercontent.com/75806093/134185723-cb6fb248-0afe-45ba-925f-61e2167d10c8.png)

The Source of the Source

![image](https://user-images.githubusercontent.com/75806093/134186559-d5376aa6-63d5-4704-b192-eb4ff883df7e.png)

![image](https://user-images.githubusercontent.com/75806093/134186864-fec4f0f1-f487-410e-90bc-1d920ba99069.png)

![image](https://user-images.githubusercontent.com/75806093/134186974-5b055fbe-a7f2-4d16-8c7f-08c10a2fb03a.png)

### CSS Locators, Chaining, and Responses

From XPath to CSS

![image](https://user-images.githubusercontent.com/75806093/134303670-f1157237-9c69-4700-b1fc-6b0cd1b61c6d.png)

![image](https://user-images.githubusercontent.com/75806093/134303761-7e37ee9b-884c-4954-9352-e54159a0ecd9.png)

![image](https://user-images.githubusercontent.com/75806093/134303801-956fdb2e-e0f3-4424-89f0-0b02c13ddd20.png)

![image](https://user-images.githubusercontent.com/75806093/134303899-7be445c3-b48d-45e3-9f6f-486d91d66f31.png)

![image](https://user-images.githubusercontent.com/75806093/134303947-a6beb9f9-d330-43f6-afaf-78dfcad51655.png)

![image](https://user-images.githubusercontent.com/75806093/134303982-56d91545-a820-42ab-b001-e5cb50204d54.png)

![image](https://user-images.githubusercontent.com/75806093/134304013-a55e5cb9-338d-46e1-b8b1-3a77cd99bef0.png)

![image](https://user-images.githubusercontent.com/75806093/134304095-31a437bd-98ae-45da-afef-6a9cf568bfbf.png)

CSS Attributes and Text Selection

![image](https://user-images.githubusercontent.com/75806093/134305208-0d685b9c-7143-4a1d-89f9-0557f688044e.png)

![image](https://user-images.githubusercontent.com/75806093/134305289-d2c42545-e3fe-4b0c-abe2-d3f6354676fd.png)

![image](https://user-images.githubusercontent.com/75806093/134305427-837191d6-208a-4f47-b5f7-fa664c34e30f.png)

Selector vs Response

![image](https://user-images.githubusercontent.com/75806093/134306157-e95a9312-d188-4f88-a831-8f0bed30e93a.png)

![image](https://user-images.githubusercontent.com/75806093/134306286-653e02fa-b93e-480f-9d2d-d4fe17f7bf71.png)

![image](https://user-images.githubusercontent.com/75806093/134306348-b55ebe44-32bb-4d5e-b9c3-1eb3e136683d.png)

Survey

DataCamp website

![image](https://user-images.githubusercontent.com/75806093/134307134-ca7bcd9e-a8d9-4f76-abaf-6ff337254d12.png)

![image](https://user-images.githubusercontent.com/75806093/134307238-a1c8c72e-94a0-4d46-9c1a-958e625b557f.png)

![image](https://user-images.githubusercontent.com/75806093/134307297-0cea4258-02bc-4445-b0de-6ca6d5517306.png)

![image](https://user-images.githubusercontent.com/75806093/134307428-eebf2089-87de-41fd-922b-97f82cd0bc68.png)

![image](https://user-images.githubusercontent.com/75806093/134307484-ecbdd2b0-8a61-4a30-b4d2-363e16222336.png)

![image](https://user-images.githubusercontent.com/75806093/134307525-f9ec4e40-d3a6-4109-a4b6-ada098983963.png)

![image](https://user-images.githubusercontent.com/75806093/134307677-ad81b657-b217-4c6d-9757-0daeceb8d0f0.png)

![image](https://user-images.githubusercontent.com/75806093/134307707-d1ecd3ea-4b6f-4396-b99b-31bb14e7454c.png)

### Spiders

![image](https://user-images.githubusercontent.com/75806093/134313694-df696f74-e580-421a-9874-7791b8c18def.png)

![image](https://user-images.githubusercontent.com/75806093/134313844-059401ed-6bfe-4715-a77e-efc60a30707c.png)

![image](https://user-images.githubusercontent.com/75806093/134314025-2c26fea3-acce-40b6-8a2c-dc8019c2c12a.png)

Start Requests

![image](https://user-images.githubusercontent.com/75806093/134314754-2e37d2f6-b96c-49ed-8657-4ce6f3c10535.png)

> yield functions like return

![image](https://user-images.githubusercontent.com/75806093/134314809-624d3be9-6fb9-4833-a6f5-72731abc3193.png)

Parse and Crawl

![image](https://user-images.githubusercontent.com/75806093/134315404-2a0517a0-6bf1-4ad0-a91f-896803e2bba6.png)

![image](https://user-images.githubusercontent.com/75806093/134315474-c538a55f-3881-4295-83b0-cbfa878dc4f6.png)

![image](https://user-images.githubusercontent.com/75806093/134315565-5e427dc0-687a-42b2-992f-f871cbc12863.png)

Capstone

![image](https://user-images.githubusercontent.com/75806093/134316255-1bc22645-6109-4efb-869b-5c69c70e37f1.png)

![image](https://user-images.githubusercontent.com/75806093/134316447-25286aaf-73a9-4014-9b6b-5b7f4ee9851c.png)

![image](https://user-images.githubusercontent.com/75806093/134316695-9ad9a041-7884-4657-b359-2fd5701831b9.png)

The Finale

![image](https://user-images.githubusercontent.com/75806093/134317666-3971e02b-1fdc-474f-be9e-40f13eac02fa.png)

![image](https://user-images.githubusercontent.com/75806093/134317730-1f57532f-0e23-4656-bb63-5790b8ae4fdf.png)

## <a id="writing-functions"></a>Writing Functions in Python

### Best Practices

Docstrings

![image](https://user-images.githubusercontent.com/75806093/134392597-1e148104-b44d-4898-9543-8fdd4472730b.png)

![image](https://user-images.githubusercontent.com/75806093/134392655-119d5fb7-9e81-422a-a509-af7b5ddf2362.png)

Google Style

![image](https://user-images.githubusercontent.com/75806093/134392755-1d8fa529-a4a7-446a-8843-4d277c077fa5.png)

![image](https://user-images.githubusercontent.com/75806093/134392786-913a976e-f01f-4bd8-94d7-2e571a50ec09.png)

![image](https://user-images.githubusercontent.com/75806093/134392820-623e8670-3587-4e02-a73c-87751ea54ad6.png)

![image](https://user-images.githubusercontent.com/75806093/134392851-e07beba9-7b1f-43d2-af81-1f4c496e3b47.png)

Numpydoc

![image](https://user-images.githubusercontent.com/75806093/134392885-1b2e1142-2afd-47b5-ab63-ca024933e7ef.png)

Retrieving docstrings

![image](https://user-images.githubusercontent.com/75806093/134392987-e8ee6733-3b8d-43c5-b23d-355de1629742.png)

DRY and "Do One Thing"

![image](https://user-images.githubusercontent.com/75806093/134394447-58cb7f6b-0f47-4a99-84cf-327027d52c91.png)

![image](https://user-images.githubusercontent.com/75806093/134394535-6e792870-3b10-4c2e-b3e4-76c7480c79fc.png)

![image](https://user-images.githubusercontent.com/75806093/134394561-5678255d-3362-4ef4-983c-c1f01aee8590.png)

![image](https://user-images.githubusercontent.com/75806093/134394625-d0e09435-97cc-4e25-bfef-9cd9539d0113.png)

![image](https://user-images.githubusercontent.com/75806093/134394654-e8254995-8960-4001-bbf6-c60ecf4178c2.png)

![image](https://user-images.githubusercontent.com/75806093/134396624-b687b1e7-1cfc-43fa-85cb-2f3e9b3c45e0.png)

![image](https://user-images.githubusercontent.com/75806093/134396702-bc98e5c7-7068-4c3f-b098-0c55cee3729f.png)

Pass by assignment

![image](https://user-images.githubusercontent.com/75806093/134399325-4f44b20b-7b27-40de-bfa1-573394472c59.png)

![image](https://user-images.githubusercontent.com/75806093/134399463-7ef93946-9d51-4353-be88-7864714b3795.png)

![image](https://user-images.githubusercontent.com/75806093/134399545-32913ba6-9eff-45a3-ab87-8a5b1cf79982.png)

![image](https://user-images.githubusercontent.com/75806093/134399599-8bf33b62-e130-4d6c-b2db-105e85554cd0.png)

Mutable - Immutable

![image](https://user-images.githubusercontent.com/75806093/134399677-f9355298-ff5c-43b8-9221-8b220bccd8c1.png)

![image](https://user-images.githubusercontent.com/75806093/134399816-83d734a1-bc16-4eb4-a6ec-cff1ba5e6069.png)

### Context Managers

![image](https://user-images.githubusercontent.com/75806093/134476373-e9a52a9c-4262-499b-8172-06ed048cec0c.png)

![image](https://user-images.githubusercontent.com/75806093/134476480-90ecedc0-5f1d-4944-95f2-a3768cef7c0f.png)

> with <context-manager>(<args>) as <variable-name>:

![image](https://user-images.githubusercontent.com/75806093/134476662-16665190-af0c-4964-ab45-416c4db70162.png)

![image](https://user-images.githubusercontent.com/75806093/134476899-71d09757-7fa5-401b-9f93-241c5394e113.png)

Five parts
    
![image](https://user-images.githubusercontent.com/75806093/134477010-b94bfb0e-71aa-4e40-81f4-2bf939fca1e0.png)

![image](https://user-images.githubusercontent.com/75806093/134477103-5e85b3aa-e040-40db-80b2-ee99cb06d4c0.png)

![image](https://user-images.githubusercontent.com/75806093/134477209-487349c0-3b75-495b-95f2-5a103ca34bf5.png)

![image](https://user-images.githubusercontent.com/75806093/134477242-93404d1a-4ce1-4b65-9b6a-3c9fed253e57.png)
    
Advanced topics    
    
![image](https://user-images.githubusercontent.com/75806093/134477566-4ad9e5f4-cba1-429f-8917-ade80c15f8b8.png)

Nested with    
    
![image](https://user-images.githubusercontent.com/75806093/134477645-37d86251-092d-48ec-84c2-a40137ea6822.png)
    
![image](https://user-images.githubusercontent.com/75806093/134477793-76cfdd36-915c-4b10-930d-1e2ac46ac3da.png)
    
![image](https://user-images.githubusercontent.com/75806093/134477848-31847e19-1a03-45c9-a897-880feff206a5.png)

![image](https://user-images.githubusercontent.com/75806093/134477904-e96b377e-fb41-49c0-ac82-61829b2b632d.png)

Patterns
    
![image](https://user-images.githubusercontent.com/75806093/134477943-3fd3018a-a6a9-45c1-a599-4cc46874b080.png)
    
### Decorators

Functions are objects
    
![image](https://user-images.githubusercontent.com/75806093/134478725-4da89514-8e60-44ce-8637-caa4b670ee5b.png)
    
![image](https://user-images.githubusercontent.com/75806093/134478819-e986af3f-c0b0-4a0d-9ee5-c36635a06dbd.png)
    
![image](https://user-images.githubusercontent.com/75806093/134478919-b3419b49-2343-4641-917d-010ff2dc2803.png)
    
![image](https://user-images.githubusercontent.com/75806093/134478984-091106e4-58bc-4046-abe8-54b7e82cfdce.png)
    
![image](https://user-images.githubusercontent.com/75806093/134479054-7661ef6d-7b2f-4393-b5aa-201f46ed74d1.png)
    
![image](https://user-images.githubusercontent.com/75806093/134479091-719f07b0-f8c0-4301-9dab-bd9dc1b0a9b9.png)
    
![image](https://user-images.githubusercontent.com/75806093/134479156-23346a1c-b251-4884-a0af-a4737f287580.png)
    
![image](https://user-images.githubusercontent.com/75806093/134479220-2cb003c5-989b-4200-80a7-68925a9cfd80.png)
    
Scope
    
![image](https://user-images.githubusercontent.com/75806093/134480161-ea590341-2fed-4ed3-9726-19ab46084988.png)
    
![image](https://user-images.githubusercontent.com/75806093/134480274-25301760-d733-43ca-87ab-4f578e686d2c.png)
    
![image](https://user-images.githubusercontent.com/75806093/134480365-dc8953d4-34b5-44f9-b8a3-e9855e4923be.png)
    
![image](https://user-images.githubusercontent.com/75806093/134480401-4201bd46-5e19-46c5-aca0-fa7c9249efce.png)
    
Closures    
    
![image](https://user-images.githubusercontent.com/75806093/134481600-90b18b4b-7f3f-405e-b6ba-e4f0c427d467.png)
    
![image](https://user-images.githubusercontent.com/75806093/134481747-568f406c-f8b2-4c6c-beda-73b3b2273955.png)
    
![image](https://user-images.githubusercontent.com/75806093/134481788-5b7839db-579c-40bd-b9b8-35e44fbec014.png)
    
![image](https://user-images.githubusercontent.com/75806093/134481836-77b1090f-f09a-42ac-8afe-c72ea58e1dfb.png)
    
![image](https://user-images.githubusercontent.com/75806093/134481875-b4d5f74f-a429-4776-8666-6a6a29d38d69.png)
    
![image](https://user-images.githubusercontent.com/75806093/134481924-a258dd81-1db2-4dc1-a180-018e907af8b7.png)
    
Decorators
    
![image](https://user-images.githubusercontent.com/75806093/134482480-83ff3490-1ab8-402d-b161-f9ac8e6fe016.png)
    
![image](https://user-images.githubusercontent.com/75806093/134482506-b7bb6a17-02c4-4b2e-9075-b07863c2c264.png)
    
![image](https://user-images.githubusercontent.com/75806093/134482563-8b99e756-b639-4c20-9db2-64ccd22f01bf.png)
    
![image](https://user-images.githubusercontent.com/75806093/134482667-e5eb860a-abd6-4270-9b63-b14b51d6ba16.png)
    
![image](https://user-images.githubusercontent.com/75806093/134482764-a0ec5dbc-5dad-4169-826f-97c3c0df9436.png)
    
![image](https://user-images.githubusercontent.com/75806093/134482852-fb5b8be7-6933-4bbd-8fed-c064a798cdcc.png)
    
![image](https://user-images.githubusercontent.com/75806093/134482951-818dc552-995c-40d4-acd7-8f9c73901a28.png)
    
![image](https://user-images.githubusercontent.com/75806093/134483011-fb30d4c8-8a23-44d1-867c-27bdd6df485a.png)
    
![image](https://user-images.githubusercontent.com/75806093/134483029-fa7af7db-2dd9-4d4c-bb4e-0e9edcbdbb40.png)
 
### More on Decorators

Real-world examples

![image](https://user-images.githubusercontent.com/75806093/134491068-b0e29397-4e2d-40d9-a4cc-56b35f114983.png)
    
![image](https://user-images.githubusercontent.com/75806093/134491183-bc72a049-b01f-4f0d-a4b8-05eb3b299ed4.png)
    
![image](https://user-images.githubusercontent.com/75806093/134491296-f7897271-afaf-44f7-b3e5-b02d7cc320a8.png)
    
![image](https://user-images.githubusercontent.com/75806093/134491335-26f87a75-15f0-484d-bd03-196e90ca9e56.png)
    
![image](https://user-images.githubusercontent.com/75806093/134491461-9f2d06a3-7f94-46ee-a781-fbbf224907f2.png)
    
![image](https://user-images.githubusercontent.com/75806093/134491480-7563e9ae-7af3-42ed-96ea-18e1fc987dd9.png)
    
Decorators and metadata
    
![image](https://user-images.githubusercontent.com/75806093/134491638-96e52579-f2cd-4a29-b789-6850b4e0da76.png)
    
![image](https://user-images.githubusercontent.com/75806093/134491705-2e93077b-43b8-4cae-922b-4e7bbaba9560.png)
    
![image](https://user-images.githubusercontent.com/75806093/134491749-4d8c8c7f-480b-4096-836a-6fd1d3cf4a78.png)
    
![image](https://user-images.githubusercontent.com/75806093/134491769-87a47007-6a8d-4ac8-b1ef-b40cc729416e.png)
    
![image](https://user-images.githubusercontent.com/75806093/134491827-38e6c4f4-4e62-4d14-8676-0d49dcf2f6ed.png)
    
![image](https://user-images.githubusercontent.com/75806093/134491869-ef075903-5652-4a3d-a34e-4a812c3ec35c.png)
    
![image](https://user-images.githubusercontent.com/75806093/134491895-4d373537-c0fe-4d0a-a2a5-675078ab364e.png)

![image](https://user-images.githubusercontent.com/75806093/134491939-6d9a0c42-8159-4ef5-9e60-9f4406f4b957.png)

Decorators that take arguments
    
![image](https://user-images.githubusercontent.com/75806093/134510525-7a01158e-4a8f-4f94-bef6-aafa635367c6.png)
    
![image](https://user-images.githubusercontent.com/75806093/134510580-5e65d5f7-6f09-429d-ad48-2b7b2c75665c.png)
    
![image](https://user-images.githubusercontent.com/75806093/134510756-7599af7a-4bc7-48c1-b2b5-916f05a2040e.png)
    
![image](https://user-images.githubusercontent.com/75806093/134510913-8a1528ca-39ef-438c-8c66-5b5c408483c1.png)
    
![image](https://user-images.githubusercontent.com/75806093/134510977-f6557623-6720-46d7-bb51-eb47c8529c12.png)
    
Timeout(): a real world example    

![image](https://user-images.githubusercontent.com/75806093/134511556-1d0951d6-c474-4bad-9e37-9e7495c39090.png)
    
![image](https://user-images.githubusercontent.com/75806093/134512223-a916862a-af0b-4e42-a23c-015c88a1cbc3.png)

![image](https://user-images.githubusercontent.com/75806093/134512404-5b7f2f5c-0c95-4ea9-8690-ee895c266c4e.png)

![image](https://user-images.githubusercontent.com/75806093/134512567-737ab009-24dc-4559-a175-fc31eee884a5.png)
    
## <a id="introduction-to-shell"></a>Introduction-to Shell

### Manipulating files and directories
 
![image](https://user-images.githubusercontent.com/75806093/134647548-3a59bc8e-9a99-45bb-98a7-888ff7906ccf.png)
    
Where am I?

The filesystem manages files and directories (or folders). Each is identified by an absolute path that shows how to reach it from the filesystem's root directory: /home/repl is the directory repl in the directory home, while /home/repl/course.txt is a file course.txt in that directory, and / on its own is the root directory.

To find out where you are in the filesystem, run the command pwd (short for "print working directory"). This prints the absolute path of your current working directory, which is where the shell runs commands and looks for files by default.   
    
How can I identify files and directories?
    
pwd tells you where you are. To find out what's there, type ls (which is short for "listing") and press the enter key. On its own, ls lists the contents of your current directory (the one displayed by pwd). If you add the names of some files, ls will list them, and if you add the names of directories, it will list their contents. For example, ls /home/repl shows you what's in your starting directory (usually called your home directory).    
    
How else can I identify files and directories?

An absolute path is like a latitude and longitude: it has the same value no matter where you are. A relative path, on the other hand, specifies a location starting from where you are: it's like saying "20 kilometers north".

As examples:

    If you are in the directory /home/repl, the relative path seasonal specifies the same directory as the absolute path /home/repl/seasonal.
    If you are in the directory /home/repl/seasonal, the relative path winter.csv specifies the same file as the absolute path /home/repl/seasonal/winter.csv.

The shell decides if a path is absolute or relative by looking at its first character: If it begins with /, it is absolute. If it does not begin with /, it is relative.    
    
How can I move to another directory?

Just as you can move around in a file browser by double-clicking on folders, you can move around in the filesystem using the command cd (which stands for "change directory").

If you type cd seasonal and then type pwd, the shell will tell you that you are now in /home/repl/seasonal. If you then run ls on its own, it shows you the contents of /home/repl/seasonal, because that's where you are. If you want to get back to your home directory /home/repl, you can use the command cd /home/repl.
    
How can I move up a directory?

The parent of a directory is the directory above it. For example, /home is the parent of /home/repl, and /home/repl is the parent of /home/repl/seasonal. You can always give the absolute path of your parent directory to commands like cd and ls. More often, though, you will take advantage of the fact that the special path .. (two dots with no spaces) means "the directory above the one I'm currently in". If you are in /home/repl/seasonal, then cd .. moves you up to /home/repl. If you use cd .. once again, it puts you in /home. One more cd .. puts you in the root directory /, which is the very top of the filesystem. (Remember to put a space between cd and .. - it is a command and a path, not a single four-letter command.)

A single dot on its own, ., always means "the current directory", so ls on its own and ls . do the same thing, while cd . has no effect (because it moves you into the directory you're currently in).

One final special path is ~ (the tilde character), which means "your home directory", such as /home/repl. No matter where you are, ls ~ will always list the contents of your home directory, and cd ~ will always take you home.

How can I copy files?

You will often want to copy files, move them into other directories to organize them, or rename them. One command to do this is cp, which is short for "copy". If original.txt is an existing file, then:

cp original.txt duplicate.txt

creates a copy of original.txt called duplicate.txt. If there already was a file called duplicate.txt, it is overwritten. If the last parameter to cp is an existing directory, then a command like:

cp seasonal/autumn.csv seasonal/winter.csv backup

copies all of the files into that directory.    
    
How can I move a file?

While cp copies a file, mv moves it from one directory to another, just as if you had dragged it in a graphical file browser. It handles its parameters the same way as cp, so the command:

mv autumn.csv winter.csv ..

moves the files autumn.csv and winter.csv from the current working directory up one level to its parent directory (because .. always refers to the directory above your current location).    
    
How can I rename files?

mv can also be used to rename files. If you run:

mv course.txt old-course.txt

then the file course.txt in the current working directory is "moved" to the file old-course.txt. This is different from the way file browsers work, but is often handy.

One warning: just like cp, mv will overwrite existing files. If, for example, you already have a file called old-course.txt, then the command shown above will replace it with whatever is in course.txt.    
    
How can I delete files?

We can copy files and move them around; to delete them, we use rm, which stands for "remove". As with cp and mv, you can give rm the names of as many files as you'd like, so:

rm thesis.txt backup/thesis-2017-08.txt

removes both thesis.txt and backup/thesis-2017-08.txt

rm does exactly what its name says, and it does it right away: unlike graphical file browsers, the shell doesn't have a trash can, so when you type the command above, your thesis is gone for good.    
    
How can I create and delete directories?

mv treats directories the same way it treats files: if you are in your home directory and run mv seasonal by-season, for example, mv changes the name of the seasonal directory to by-season. However, rm works differently.

If you try to rm a directory, the shell prints an error message telling you it can't do that, primarily to stop you from accidentally deleting an entire directory full of work. Instead, you can use a separate command called rmdir. For added safety, it only works when the directory is empty, so you must delete the files in a directory before you delete the directory. (Experienced users can use the -r option to rm to get the same effect; we will discuss command options in the next chapter.)    
    
Wrapping up

You will often create intermediate files when analyzing data. Rather than storing them in your home directory, you can put them in /tmp, which is where people and programs often keep files they only need briefly. (Note that /tmp is immediately below the root directory /, not below your home directory.) This wrap-up exercise will show you how to do that.
    
### Manipulating data   

How can I view a file's contents?

Before you rename or delete files, you may want to have a look at their contents. The simplest way to do this is with cat, which just prints the contents of files onto the screen. (Its name is short for "concatenate", meaning "to link things together", since it will print all the files whose names you give it, one after the other.)

cat agarwal.txt

name: Agarwal, Jasmine
position: RCT2
start: 2017-04-01
benefits: full
    
How can I view a file's contents piece by piece?

You can use cat to print large files and then scroll through the output, but it is usually more convenient to page the output. The original command for doing this was called more, but it has been superseded by a more powerful command called less. (This kind of naming is what passes for humor in the Unix world.) When you less a file, one page is displayed at a time; you can press spacebar to page down or type q to quit.

If you give less the names of several files, you can type :n (colon and a lower-case 'n') to move to the next file, :p to go back to the previous one, or :q to quit.

Note: If you view solutions to exercises that use less, you will see an extra command at the end that turns paging off so that we can test your solutions efficiently.    
    
How can I look at the start of a file?

The first thing most data scientists do when given a new dataset to analyze is figure out what fields it contains and what values those fields have. If the dataset has been exported from a database or spreadsheet, it will often be stored as comma-separated values (CSV). A quick way to figure out what it contains is to look at the first few rows.

We can do this in the shell using a command called head. As its name suggests, it prints the first few lines of a file (where "a few" means 10), so the command:

head seasonal/summer.csv

displays:

Date,Tooth
2017-01-11,canine
2017-01-18,wisdom
2017-01-21,bicuspid
2017-02-02,molar
2017-02-27,wisdom
2017-02-27,wisdom
2017-03-07,bicuspid
2017-03-15,wisdom
2017-03-20,canine
    
How can I type less?

One of the shell's power tools is tab completion. If you start typing the name of a file and then press the tab key, the shell will do its best to auto-complete the path. For example, if you type sea and press tab, it will fill in the directory name seasonal/ (with a trailing slash). If you then type a and tab, it will complete the path as seasonal/autumn.csv.

If the path is ambiguous, such as seasonal/s, pressing tab a second time will display a list of possibilities. Typing another character or two to make your path more specific and then pressing tab will fill in the rest of the name.    
    
How can I control what commands do?

You won't always want to look at the first 10 lines of a file, so the shell lets you change head's behavior by giving it a command-line flag (or just "flag" for short). If you run the command:

head -n 3 seasonal/summer.csv

head will only display the first three lines of the file. If you run head -n 100, it will display the first 100 (assuming there are that many), and so on.

A flag's name usually indicates its purpose (for example, -n is meant to signal "number of lines"). Command flags don't have to be a - followed by a single letter, but it's a widely-used convention.

Note: it's considered good style to put all flags before any filenames, so in this course, we only accept answers that do that.    
    
How can I list everything below a directory?

In order to see everything underneath a directory, no matter how deeply nested it is, you can give ls the flag -R (which means "recursive"). If you use ls -R in your home directory, you will see something like this:

backup          course.txt      people          seasonal

./backup:

./people:
agarwal.txt

./seasonal:
autumn.csv      spring.csv      summer.csv      winter.csv

This shows every file and directory in the current level, then everything in each sub-directory, and so on.    
    
To help you know what is what, ls has another flag -F that prints a / after the name of every directory and a * after the name of every runnable program.     
    
How can I get help for a command?

To find out what commands do, people used to use the man command (short for "manual"). For example, the command man head brings up this information:

HEAD(1)               BSD General Commands Manual              HEAD(1)

NAME
     head -- display first lines of a file

SYNOPSIS
     head [-n count | -c bytes] [file ...]

DESCRIPTION
     This filter displays the first count lines or bytes of each of
     the specified files, or of the standard input if no files are
     specified.  If count is omitted it defaults to 10.

     If more than a single file is specified, each file is preceded by
     a header consisting of the string ``==> XXX <=='' where ``XXX''
     is the name of the file.

SEE ALSO
     tail(1)

man automatically invokes less, so you may need to press spacebar to page through the information and :q to quit.

The one-line description under NAME tells you briefly what the command does, and the summary under SYNOPSIS lists all the flags it understands. Anything that is optional is shown in square brackets [...], either/or alternatives are separated by |, and things that can be repeated are shown by ..., so head's manual page is telling you that you can either give a line count with -n or a byte count with -c, and that you can give it any number of filenames.

The problem with the Unix manual is that you have to know what you're looking for. If you don't, you can search Stack Overflow, ask a question on DataCamp's Slack channels, or look at the SEE ALSO sections of the commands you already know.    
    
How can I select columns from a file?

head and tail let you select rows from a text file. If you want to select columns, you can use the command cut. It has several options (use man cut to explore them), but the most common is something like:

cut -f 2-5,8 -d , values.csv

which means "select columns 2 through 5 and columns 8, using comma as the separator". cut uses -f (meaning "fields") to specify columns and -d (meaning "delimiter") to specify the separator. You need to specify the latter because some files may use spaces, tabs, or colons to separate columns.    
    
What can"'"t cut do?

cut is a simple-minded command. In particular, it doesn"'"t understand quoted strings. If, for example, your file is:

Name,Age
"Johel,Ranjit",28
"Sharma,Rupinder",26

then:

cut -f 2 -d , everyone.csv

will produce:

Age
Ranjit"
Rupinder"

rather than everyone"'"s age, because it will think the comma between last and first names is a column separator.    
    
How can I repeat commands?

One of the biggest advantages of using the shell is that it makes it easy for you to do things over again. If you run some commands, you can then press the up-arrow key to cycle back through them. You can also use the left and right arrow keys and the delete key to edit them. Pressing return will then run the modified command.

Even better, history will print a list of commands you have run recently. Each one is preceded by a serial number to make it easy to re-run particular commands: just type !55 to re-run the 55th command in your history (if you have that many). You can also re-run a command by typing an exclamation mark followed by the command"'"s name, such as !head or !cut, which will re-run the most recent use of that command.    
How can I select lines containing specific values?

head and tail select rows, cut selects columns, and grep selects lines according to what they contain. In its simplest form, grep takes a piece of text followed by one or more filenames and prints all of the lines in those files that contain that text. For example, grep bicuspid seasonal/winter.csv prints lines from winter.csv that contain "bicuspid".

grep can search for patterns as well; we will explore those in the next course. What's more important right now is some of grep's more common flags:

    -c: print a count of matching lines rather than the lines themselves
    -h: do not print the names of files when searching multiple files
    -i: ignore case (e.g., treat "Regression" and "regression" as matches)
    -l: print the names of files that contain matches, not the matches
    -n: print line numbers for matching lines
    -v: invert the match, i.e., only show lines that don't match
    
Why isn't it always safe to treat data as text?

The SEE ALSO section of the manual page for cut refers to a command called paste that can be used to combine data files instead of cutting them up.    
     
### Combining tools   

How can I store a command's output in a file?

All of the tools you have seen so far let you name input files. Most don't have an option for naming an output file because they don't need one. Instead, you can use redirection to save any command's output anywhere you want. If you run this command:

head -n 5 seasonal/summer.csv

it prints the first 5 lines of the summer data on the screen. If you run this command instead:

head -n 5 seasonal/summer.csv > top.csv

nothing appears on the screen. Instead, head's output is put in a new file called top.csv. You can take a look at that file's contents using cat:

cat top.csv

The greater-than sign > tells the shell to redirect head's output to a file. It isn't part of the head command; instead, it works with every shell command that produces output.                                                        
                                                        
How can I use a command's output as an input?

Suppose you want to get lines from the middle of a file. More specifically, suppose you want to get lines 3-5 from one of our data files. You can start by using head to get the first 5 lines and redirect that to a file, and then use tail to select the last 3:

head -n 5 seasonal/winter.csv > top.csv
tail -n 3 top.csv

A quick check confirms that this is lines 3-5 of our original file, because it is the last 3 lines of the first 5.                                                        

What's a better way to combine commands?

Using redirection to combine commands has two drawbacks:

    It leaves a lot of intermediate files lying around (like top.csv).
    The commands to produce your final result are scattered across several lines of history.

The shell provides another tool that solves both of these problems at once called a pipe. Once again, start by running head:

head -n 5 seasonal/summer.csv

Instead of sending head's output to a file, add a vertical bar and the tail command without a filename:

head -n 5 seasonal/summer.csv | tail -n 3

The pipe symbol tells the shell to use the output of the command on the left as the input to the command on the right.    
                                                        
How can I combine many commands?

You can chain any number of commands together. For example, this command:

cut -d , -f 1 seasonal/spring.csv | grep -v Date | head -n 10

will:

    select the first column from the spring data;
    remove the header line containing the word "Date"; and
    select the first 10 lines of actual data.
                                                        
How can I count the records in a file?

The command wc (short for "word count") prints the number of characters, words, and lines in a file. You can make it print only one of these using -c, -w, or -l respectively.                                                        
                                                        
How can I specify many files at once?

Most shell commands will work on multiple files if you give them multiple filenames. For example, you can get the first column from all of the seasonal data files at once like this:

cut -d , -f 1 seasonal/winter.csv seasonal/spring.csv seasonal/summer.csv seasonal/autumn.csv

But typing the names of many files over and over is a bad idea: it wastes time, and sooner or later you will either leave a file out or repeat a file's name. To make your life better, the shell allows you to use wildcards to specify a list of files with a single expression. The most common wildcard is *, which means "match zero or more characters". Using it, we can shorten the cut command above to this:

cut -d , -f 1 seasonal/*

or:

cut -d , -f 1 seasonal/*.csv
                                                        
What other wildcards can I use?

The shell has other wildcards as well, though they are less commonly used:

    ? matches a single character, so 201?.txt will match 2017.txt or 2018.txt, but not 2017-01.txt.
    [...] matches any one of the characters inside the square brackets, so 201[78].txt matches 2017.txt or 2018.txt, but not 2016.txt.
    {...} matches any of the comma-separated patterns inside the curly brackets, so {*.txt, *.csv} matches any file whose name ends with .txt or .csv, but not files whose names end with .pdf.
                                                        
How can I sort lines of text?

As its name suggests, sort puts data in order. By default it does this in ascending alphabetical order, but the flags -n and -r can be used to sort numerically and reverse the order of its output, while -b tells it to ignore leading blanks and -f tells it to fold case (i.e., be case-insensitive). Pipelines often use grep to get rid of unwanted records and then sort to put the remaining records in order.                                                        
How can I remove duplicate lines?

Another command that is often used with sort is uniq, whose job is to remove duplicated lines. More specifically, it removes adjacent duplicated lines. If a file contains:

2017-07-03
2017-07-03
2017-08-03
2017-08-03

then uniq will produce:

2017-07-03
2017-08-03

but if it contains:

2017-07-03
2017-08-03
2017-07-03
2017-08-03

then uniq will print all four lines. The reason is that uniq is built to work with very large files. In order to remove non-adjacent lines from a file, it would have to keep the whole file in memory (or at least, all the unique lines seen so far). By only removing adjacent duplicates, it only has to keep the most recent unique line in memory.                                                        

How can I save the output of a pipe?

The shell lets us redirect the output of a sequence of piped commands:

cut -d , -f 2 seasonal/*.csv | grep -v Tooth > teeth-only.txt

However, > must appear at the end of the pipeline: if we try to use it in the middle, like this:

cut -d , -f 2 seasonal/*.csv > teeth-only.txt | grep -v Tooth

then all of the output from cut is written to teeth-only.txt, so there is nothing left for grep and it waits forever for some input.    
    
How can I stop a running program?

The commands and scripts that you have run so far have all executed quickly, but some tasks will take minutes, hours, or even days to complete. You may also mistakenly put redirection in the middle of a pipeline, causing it to hang up. If you decide that you don't want a program to keep running, you can type Ctrl + C to end it. This is often written ^C in Unix documentation; note that the 'c' can be lower-case.
    
### Batch processing   
  
How does the shell store information?

Like other programs, the shell stores information in variables. Some of these, called environment variables, are available all the time. Environment variables' names are conventionally written in upper case, and a few of the more commonly-used ones are shown below.    
    
![image](https://user-images.githubusercontent.com/75806093/134679765-238c0875-788d-47e2-b3f9-2a14e77c15a2.png)
    
To get a complete list (which is quite long), you can type set in the shell.    
    
How can I print a variable's value?

A simpler way to find a variable's value is to use a command called echo, which prints its arguments. Typing

echo hello DataCamp!

prints

hello DataCamp!

If you try to use it to print a variable's value like this:

echo USER

it will print the variable's name, USER.

To get the variable's value, you must put a dollar sign $ in front of it. Typing

echo $USER

prints

repl

This is true everywhere: to get the value of a variable called X, you must write $X. (This is so that the shell can tell whether you mean "a file named X" or "the value of a variable named X".)    
    
How else does the shell store information?

The other kind of variable is called a shell variable, which is like a local variable in a programming language.

To create a shell variable, you simply assign a value to a name:

training=seasonal/summer.csv

without any spaces before or after the = sign. Once you have done this, you can check the variable's value with:

echo $training

seasonal/summer.csv
    
How can I repeat a command many times?

Shell variables are also used in loops, which repeat commands many times. If we run this command:

for filetype in gif jpg png; do echo $filetype; done

it produces:

gif
jpg
png

Notice these things about the loop:

    The structure is for …variable… in …list… ; do …body… ; done
    The list of things the loop is to process (in our case, the words gif, jpg, and png).
    The variable that keeps track of which thing the loop is currently processing (in our case, filetype).
    The body of the loop that does the processing (in our case, echo $filetype).

Notice that the body uses $filetype to get the variable's value instead of just filetype, just like it does with any other shell variable. Also notice where the semi-colons go: the first one comes between the list and the keyword do, and the second comes between the body and the keyword done.    
    
How can I repeat a command once for each file?

You can always type in the names of the files you want to process when writing the loop, but it's usually better to use wildcards. Try running this loop in the console:

for filename in seasonal/*.csv; do echo $filename; done

It prints:

seasonal/autumn.csv
seasonal/spring.csv
seasonal/summer.csv
seasonal/winter.csv

because the shell expands seasonal/*.csv to be a list of four filenames before it runs the loop.    
    
How can I record the names of a set of files?

People often set a variable using a wildcard expression to record a list of filenames. For example, if you define datasets like this:

datasets=seasonal/*.csv

you can display the files' names later using:

for filename in $datasets; do echo $filename; done

This saves typing and makes errors less likely.    
    
A variable's name versus its value

A common mistake is to forget to use $ before the name of a variable. When you do this, the shell uses the name you have typed rather than the value of that variable.

A more common mistake for experienced users is to mis-type the variable's name. For example, if you define datasets like this:

datasets=seasonal/*.csv

and then type:

echo $datsets

the shell doesn't print anything, because datsets (without the second "a") isn't defined.    
    
How can I run many commands in a single loop?

Printing filenames is useful for debugging, but the real purpose of loops is to do things with multiple files. This loop prints the second line of each data file:

for file in seasonal/*.csv; do head -n 2 $file | tail -n 1; done

It has the same structure as the other loops you have already seen: all that's different is that its body is a pipeline of two commands instead of a single command.    
    
Why shouldn't I use spaces in filenames?

It's easy and sensible to give files multi-word names like July 2017.csv when you are using a graphical file explorer. However, this causes problems when you are working in the shell. For example, suppose you wanted to rename July 2017.csv to be 2017 July data.csv. You cannot type:

mv July 2017.csv 2017 July data.csv

because it looks to the shell as though you are trying to move four files called July, 2017.csv, 2017, and July (again) into a directory called data.csv. Instead, you have to quote the files' names so that the shell treats each one as a single parameter:

mv 'July 2017.csv' '2017 July data.csv'
    
How can I do many things in a single loop?

The loops you have seen so far all have a single command or pipeline in their body, but a loop can contain any number of commands. To tell the shell where one ends and the next begins, you must separate them with semi-colons:

for f in seasonal/*.csv; do echo $f; head -n 2 $f | tail -n 1; done

seasonal/autumn.csv
2017-01-05,canine
seasonal/spring.csv
2017-01-25,wisdom
seasonal/summer.csv
2017-01-11,canine
seasonal/winter.csv
2017-01-03,bicuspid
    
### Creating new tools    
    
How can I edit a file?

Unix has a bewildering variety of text editors. For this course, we will use a simple one called Nano. If you type nano filename, it will open filename for editing (or create it if it doesn't already exist). You can move around with the arrow keys, delete characters using backspace, and do other operations with control-key combinations:

    Ctrl + K: delete a line.
    Ctrl + U: un-delete a line.
    Ctrl + O: save the file ('O' stands for 'output'). You will also need to press Enter to confirm the filename!
    Ctrl + X: exit the editor.

How can I record what I just did?

When you are doing a complex analysis, you will often want to keep a record of the commands you used. You can do this with the tools you have already seen:

    Run history.
    Pipe its output to tail -n 10 (or however many recent steps you want to save).
    Redirect that to a file called something like figure-5.history.

This is better than writing things down in a lab notebook because it is guaranteed not to miss any steps. It also illustrates the central idea of the shell: simple tools that produce and consume lines of text can be combined in a wide variety of ways to solve a broad range of problems.    
    
How can I save commands to re-run later?

You have been using the shell interactively so far. But since the commands you type in are just text, you can store them in files for the shell to run over and over again. To start exploring this powerful capability, put the following command in a file called headers.sh:

head -n 1 seasonal/*.csv

This command selects the first row from each of the CSV files in the seasonal directory. Once you have created this file, you can run it by typing:

bash headers.sh

This tells the shell (which is just a program called bash) to run the commands contained in the file headers.sh, which produces the same output as running the commands directly.    
    
How can I re-use pipes?

A file full of shell commands is called a *shell script, or sometimes just a "script" for short. Scripts don't have to have names ending in .sh, but this lesson will use that convention to help you keep track of which files are scripts.

Scripts can also contain pipes. For example, if all-dates.sh contains this line:

cut -d , -f 1 seasonal/*.csv | grep -v Date | sort | uniq

then:

bash all-dates.sh > dates.out

will extract the unique dates from the seasonal data files and save them in dates.out.    
    
How can I pass filenames to scripts?

A script that processes specific files is useful as a record of what you did, but one that allows you to process any files you want is more useful. To support this, you can use the special expression $@ (dollar sign immediately followed by at-sign) to mean "all of the command-line parameters given to the script".

For example, if unique-lines.sh contains sort $@ | uniq, when you run:

bash unique-lines.sh seasonal/summer.csv

the shell replaces $@ with seasonal/summer.csv and processes one file. If you run this:

bash unique-lines.sh seasonal/summer.csv seasonal/autumn.csv

it processes two data files, and so on.

As a reminder, to save what you have written in Nano, type Ctrl + O to write the file out, then Enter to confirm the filename, then Ctrl + X to exit the editor.    
    
How can I process a single argument?

As well as $@, the shell lets you use $1, $2, and so on to refer to specific command-line parameters. You can use this to write commands that feel simpler or more natural than the shell's. For example, you can create a script called column.sh that selects a single column from a CSV file when the user provides the filename as the first parameter and the column as the second:

cut -d , -f $2 $1

and then run it using:

bash column.sh seasonal/autumn.csv 1

Notice how the script uses the two parameters in reverse order.    
    
How can one shell script do many things?

Our shells scripts so far have had a single command or pipe, but a script can contain many lines of commands. For example, you can create one that tells you how many records are in the shortest and longest of your data files, i.e., the range of your datasets' lengths.

Note that in Nano, "copy and paste" is achieved by navigating to the line you want to copy, pressing CTRL + K to cut the line, then CTRL + U twice to paste two copies of it.

As a reminder, to save what you have written in Nano, type Ctrl + O to write the file out, then Enter to confirm the filename, then Ctrl + X to exit the editor.    
    
How can I write loops in a shell script?

Shell scripts can also contain loops. You can write them using semi-colons, or split them across lines without semi-colons to make them more readable:

# Print the first and last data records of each file.
for filename in $@
do
    head -n 2 $filename | tail -n 1
    tail -n 1 $filename
done

(You don't have to indent the commands inside the loop, but doing so makes things clearer.)

The first line of this script is a comment to tell readers what the script does. Comments start with the # character and run to the end of the line. Your future self will thank you for adding brief explanations like the one shown here to every script you write.    
    
What happens when I don't provide filenames?

A common mistake in shell scripts (and interactive commands) is to put filenames in the wrong place. If you type:

tail -n 3

then since tail hasn't been given any filenames, it waits to read input from your keyboard. This means that if you type:

head -n 5 | tail -n 3 somefile.txt

then tail goes ahead and prints the last three lines of somefile.txt, but head waits forever for keyboard input, since it wasn't given a filename and there isn't anything ahead of it in the pipeline.    
    
## <a id="parallel-programming-dask-python"></a>Parallel Programming with Dask in Python   
    
### Working with Big Data

Big Data
    
![image](https://user-images.githubusercontent.com/75806093/134802888-861047a5-2b86-49a6-8e7b-87f0dcdc6eaf.png)
    
![image](https://user-images.githubusercontent.com/75806093/134802905-6fd0f5c2-ae20-4005-a82f-43c0a6813a37.png)

![image](https://user-images.githubusercontent.com/75806093/134802918-3d111e89-2ae0-446c-8d09-2b7a07c83f2f.png)
    
![image](https://user-images.githubusercontent.com/75806093/134802941-5cbe971d-cbc4-4d41-bc60-f67e57097c2a.png)
    
![image](https://user-images.githubusercontent.com/75806093/134802958-4bc410c0-8d8c-45c6-936e-5e2ac0dfe6df.png)
    
![image](https://user-images.githubusercontent.com/75806093/134803428-343f67b0-7f94-44d5-9077-2d7c98a3cad0.png)
    
![image](https://user-images.githubusercontent.com/75806093/134803437-9573ab04-6222-4984-8849-71ae27eee440.png)
    
![image](https://user-images.githubusercontent.com/75806093/134803442-b8e1007d-8ba8-47e6-bfc3-933548165340.png)
    
![image](https://user-images.githubusercontent.com/75806093/134803457-7839e65a-d9b1-4277-959b-f40b0f07c218.png)
    
![image](https://user-images.githubusercontent.com/75806093/134803466-b8dc6223-0e54-41ae-929b-619c7a9d8145.png)
    
Thinking about Data in Chunks    
    
![image](https://user-images.githubusercontent.com/75806093/134803525-7828072d-b09b-4743-9e8a-acc2e0598897.png)

![image](https://user-images.githubusercontent.com/75806093/134803534-ae2691cf-d2e5-41c6-bd5c-08d87038fa38.png)
    
![image](https://user-images.githubusercontent.com/75806093/134803541-c1111cea-0c83-4ec9-946d-60b7ea78c331.png)
    
![image](https://user-images.githubusercontent.com/75806093/134803553-fc40cb20-444a-4fc9-9ffd-20acb9f612f2.png)
    
![image](https://user-images.githubusercontent.com/75806093/134803559-21a9eb18-4f30-46d2-886c-038b9c68102e.png)
    
![image](https://user-images.githubusercontent.com/75806093/134803566-ac5cadce-3ca5-4e06-b55c-b18d123c8b85.png)
    
Managing Data with Generators    
    
![image](https://user-images.githubusercontent.com/75806093/134803610-5118d6c4-4a3a-4e96-ac16-b478c40e9770.png)
    
![image](https://user-images.githubusercontent.com/75806093/134803643-c7b47e18-bd13-4c8f-91d5-102eb8bfaf8b.png)

![image](https://user-images.githubusercontent.com/75806093/134803654-bed40c05-910d-4985-916d-fd12fbf5eed5.png)
    
![image](https://user-images.githubusercontent.com/75806093/134803663-04777ad6-893e-47b8-951c-cbe435bb3fc9.png)
    
![image](https://user-images.githubusercontent.com/75806093/134803668-ffbf8160-4a03-4675-b340-ec635ad57de3.png)
    
![image](https://user-images.githubusercontent.com/75806093/134803677-cc2d431d-c9c1-4098-9437-8cf58c23dbd1.png)
    
![image](https://user-images.githubusercontent.com/75806093/134803700-73ce02fc-9538-412e-a9b4-a7628b2dbe34.png)
    
![image](https://user-images.githubusercontent.com/75806093/134803719-ba95dadf-5b7d-43bd-8c46-f9351f1dcc8e.png)
    
Delaying Computation with Dask    
    
![image](https://user-images.githubusercontent.com/75806093/134803860-17e82d69-7e4e-4fee-b5e0-2c87aa093332.png)
    
![image](https://user-images.githubusercontent.com/75806093/134803874-43f93275-98ab-42a2-809a-947aa13d45bc.png)
    
![image](https://user-images.githubusercontent.com/75806093/134803913-a3c21b28-78b9-451c-a0dc-b417ab3d467b.png)
    
![image](https://user-images.githubusercontent.com/75806093/134803918-c8bff040-9df1-4114-87fc-3c67d1662cab.png)

![image](https://user-images.githubusercontent.com/75806093/134803929-8f970fdf-24c1-41fe-90f6-82a9a78e3e27.png)
    
![image](https://user-images.githubusercontent.com/75806093/134803940-4591921f-a599-4012-89f7-49db6b9df060.png)

![image](https://user-images.githubusercontent.com/75806093/134803958-07ebfd08-e1d2-4f86-82f2-b60c160aacf3.png)
    
![image](https://user-images.githubusercontent.com/75806093/134803982-a944c192-8c8d-4337-9a24-4f058a548909.png)
    
![image](https://user-images.githubusercontent.com/75806093/134803990-072362d6-c240-48f1-b730-71eec332cd1f.png)
    
![image](https://user-images.githubusercontent.com/75806093/134804003-98d0fa46-a5c8-4ee0-8ef0-2cd3ed29a946.png)
    
### Working with Dask Arrays   
    
![image](https://user-images.githubusercontent.com/75806093/134804309-3b564142-9715-43af-a6e4-e12fe071b86b.png)
    
![image](https://user-images.githubusercontent.com/75806093/134804317-5e634269-7535-417f-a1b6-17cddda2b8db.png)
    
![image](https://user-images.githubusercontent.com/75806093/134804338-578ea383-1609-4912-826c-021eee0cbe46.png)
    
![image](https://user-images.githubusercontent.com/75806093/134804348-e8dae279-2752-4721-93b4-1024abf28ebc.png)
    
![image](https://user-images.githubusercontent.com/75806093/134804361-68f07f51-777e-461e-9660-b01ce23a6fbd.png)

![image](https://user-images.githubusercontent.com/75806093/134804369-f0624583-9442-4411-a56e-c8976d23dc92.png)
    
![image](https://user-images.githubusercontent.com/75806093/134804379-f1ad6990-4f7a-4af3-bf01-68ff3f6a9ba3.png)
    
Computing with Multidimensional Arrays    
    
![image](https://user-images.githubusercontent.com/75806093/134804408-b0e096d4-d3aa-495d-9aea-8cc0414b70ab.png)
    
![image](https://user-images.githubusercontent.com/75806093/134804419-02b71e35-4d1c-485b-8fa1-b13ccacf5e30.png)
    
![image](https://user-images.githubusercontent.com/75806093/134804426-7e64eb16-0440-4521-8d94-246126fc143c.png)
    
![image](https://user-images.githubusercontent.com/75806093/134804437-faf62de4-da89-4a73-9998-b3e41c118324.png)
    
![image](https://user-images.githubusercontent.com/75806093/134804448-aa21f8ec-b358-40fa-a386-e5b38c2fff59.png)
    
![image](https://user-images.githubusercontent.com/75806093/134804468-7085502f-00b4-4f0a-9059-4f9fa1da6a6c.png)
    
![image](https://user-images.githubusercontent.com/75806093/134804502-2a043bbb-bb3e-48ac-9caa-bdbc11b02ecb.png)
    
![image](https://user-images.githubusercontent.com/75806093/134804517-3f496496-3a64-411f-ba54-df953244283a.png)
    
![image](https://user-images.githubusercontent.com/75806093/134804526-1b982409-8242-456e-87ba-23f4a991d7ad.png)
    
![image](https://user-images.githubusercontent.com/75806093/134804537-68a98250-f72d-4f92-b4b0-c02ee52d8060.png)

![image](https://user-images.githubusercontent.com/75806093/134804541-e904ba31-bc74-47ed-a7d5-7aaf71b872db.png)

![image](https://user-images.githubusercontent.com/75806093/134804554-1940c6d9-3c62-428c-81b1-ab8508b8d24e.png)
    
![image](https://user-images.githubusercontent.com/75806093/134804564-c8bf0465-36c5-4b4f-827c-7de7bea64a33.png)    
    
### Working with Dask DataFrames   
    
Using Dask DataFrames   
    
![image](https://user-images.githubusercontent.com/75806093/134808700-3bb1058c-866e-4e29-a5c7-e780f45e4a2f.png)
    
![image](https://user-images.githubusercontent.com/75806093/134808706-719b2c95-9f77-4617-a7bc-381e6a098240.png)
    
![image](https://user-images.githubusercontent.com/75806093/134808710-718e3f3d-dc32-494a-ae02-4dc47d9401fb.png)
    
![image](https://user-images.githubusercontent.com/75806093/134808716-22c2d4fd-2d3e-41a3-a706-b007f7004f31.png)
    
![image](https://user-images.githubusercontent.com/75806093/134808728-ec63d3ec-1d7f-4b27-9436-27b19994ee85.png)
    
![image](https://user-images.githubusercontent.com/75806093/134808735-cad4b9da-3289-4d65-9215-13fe895824e5.png)
    
Timing Dask DataFrame Operations
    
![image](https://user-images.githubusercontent.com/75806093/134808755-ae015ec0-e856-4f31-b29e-bfa7910906cc.png)
    
![image](https://user-images.githubusercontent.com/75806093/134808763-8e760c2f-dc94-476a-851c-1edca7d4ae0b.png)
    
![image](https://user-images.githubusercontent.com/75806093/134808772-4c64ae57-d8c1-4b11-a29e-b7928b935651.png)
    
![image](https://user-images.githubusercontent.com/75806093/134808780-96ade945-3c0c-482a-b72e-dfd268c270f0.png)
    
![image](https://user-images.githubusercontent.com/75806093/134808789-4db79240-94c5-40ee-9fb7-f55a97732aa2.png)
    
![image](https://user-images.githubusercontent.com/75806093/134808801-89c17075-40c8-4261-a7df-cf2d914eb250.png)
    
![image](https://user-images.githubusercontent.com/75806093/134808810-a9f07851-b9e0-4ec2-bd87-cf6eb0caeb1a.png)
    
Analyzing NYC Taxi Rides    
    
![image](https://user-images.githubusercontent.com/75806093/134808858-98f5b4b8-82e7-4380-adc6-8341afcef275.png)
    
![image](https://user-images.githubusercontent.com/75806093/134808875-41c36941-5819-4e24-ac3a-4f53a6bc8d84.png)
    
![image](https://user-images.githubusercontent.com/75806093/134808886-3deec973-097f-490c-93c0-a3194c7af5e2.png)
    
![image](https://user-images.githubusercontent.com/75806093/134808892-0573a867-5464-42f3-9860-3b43f4fe1ffa.png)
    
### Working with Dask Bags for Unstructured Data   
    
Building Dask Bags & Globbing
    
![image](https://user-images.githubusercontent.com/75806093/134809028-fb909e2d-1594-4a58-977e-e56fae2b0617.png)
    
![image](https://user-images.githubusercontent.com/75806093/134809036-ddc37e68-038f-4748-83e9-77e1add3f231.png)
    
![image](https://user-images.githubusercontent.com/75806093/134809044-ed262256-6260-44fc-815d-a1cddccef2e3.png)
    
![image](https://user-images.githubusercontent.com/75806093/134809057-6e156816-3c2c-4936-afb4-e5bd7ccd092e.png)
    
![image](https://user-images.githubusercontent.com/75806093/134809059-d155fff9-45c1-4e35-9000-507638dd3812.png)
    
![image](https://user-images.githubusercontent.com/75806093/134809069-d30a4a65-c5fe-4dc1-ae5a-1306ce3b4eaa.png)
    
![image](https://user-images.githubusercontent.com/75806093/134809078-770d995f-5ede-4321-9a57-2f05b5e938ed.png)
    
![image](https://user-images.githubusercontent.com/75806093/134809088-081fcaf8-18cf-4870-ad99-cce24c29e96e.png)

Functional Approaches using Dask Bags    
    
![image](https://user-images.githubusercontent.com/75806093/134809154-56f91934-4c99-4b26-86a0-21dc5b69b601.png)
    
![image](https://user-images.githubusercontent.com/75806093/134809160-dc5d8dfb-97fc-454a-81b7-27fa8c2fd3d8.png)
    
![image](https://user-images.githubusercontent.com/75806093/134809168-2196b566-6915-4ff3-8647-9393f43b64c4.png)
    
![image](https://user-images.githubusercontent.com/75806093/134809175-78e476c2-a316-4b62-a469-77601e8019c6.png)
    
![image](https://user-images.githubusercontent.com/75806093/134809181-a1e96e49-66ef-4422-9562-2f012441a08e.png)
    
![image](https://user-images.githubusercontent.com/75806093/134809189-d0707765-613e-48c7-ba67-9ef9ad737623.png)
    
Analyzing Congressional Legislation
    
![image](https://user-images.githubusercontent.com/75806093/134809328-e482943f-3b5b-4739-8d8c-30ec21a47f8c.png)
    
![image](https://user-images.githubusercontent.com/75806093/134809336-a0dfd2f2-23a6-4daf-8324-6a930407dec5.png)
    
![image](https://user-images.githubusercontent.com/75806093/134809343-b96e1517-9051-45d2-87a5-3a44f4a3a001.png)
    
![image](https://user-images.githubusercontent.com/75806093/134809348-0b0df358-aea8-4c67-af99-0473fa145420.png)
    
![image](https://user-images.githubusercontent.com/75806093/134809356-fe40d483-3cdb-45d5-b570-aaffa36e2e85.png)
    
![image](https://user-images.githubusercontent.com/75806093/134809364-31a7fd64-4be6-47a0-bf2b-5bdc1b34b016.png)
    
![image](https://user-images.githubusercontent.com/75806093/134809374-9ce60378-f631-4c73-a707-23dadf1befdb.png)
    
![image](https://user-images.githubusercontent.com/75806093/134809395-d158a64f-8a75-4edf-abf3-e22ccf770acd.png)
    
![image](https://user-images.githubusercontent.com/75806093/134809406-f8de7092-6c66-45b2-abfa-a62b50383f7b.png)
    
### Case Study: Analyzing Flight Delays   
    
-
    
## <a id="software-engineering-for-data-scientists"></a>Software Engineering for Data Scientists in Python
    
### Software Engineering & Data Science   
    
![image](https://user-images.githubusercontent.com/75806093/134865820-f8e22b6f-194a-486d-8f2b-ff9da969559a.png)
    
![image](https://user-images.githubusercontent.com/75806093/134865869-66889415-d65c-4d0a-afcf-3adc73a27864.png)
    
![image](https://user-images.githubusercontent.com/75806093/134865990-144ab3c1-cba3-4bf7-9f5a-f9e48f2b8f17.png)
    
![image](https://user-images.githubusercontent.com/75806093/134866023-f065f54f-e475-4563-93a7-1393258a4d73.png)

![image](https://user-images.githubusercontent.com/75806093/134866078-c30e1ecf-f59b-4cdb-bbe5-fab4f3bcac77.png)
    
![image](https://user-images.githubusercontent.com/75806093/134866127-7c437f44-db82-4d79-9be4-b9c299b23d6a.png)
    
Introduction to packages & documentation    
    
![image](https://user-images.githubusercontent.com/75806093/134866414-c51caccb-35ca-45ed-81f5-41a39136cc31.png)

> pip = python install packages
    
![image](https://user-images.githubusercontent.com/75806093/134866498-be59787e-9295-4ce5-aa6b-07f0b3a1fba0.png)
    
![image](https://user-images.githubusercontent.com/75806093/134866614-b4043b55-b851-4933-97f3-c3f5815f6d81.png)
    
![image](https://user-images.githubusercontent.com/75806093/134866652-055aacdb-7f71-4513-9069-21c920eda29e.png)
    
Conventions and PEP 8    
    
![image](https://user-images.githubusercontent.com/75806093/134867111-e27002d0-f818-453c-8ff1-7930d65f059e.png)
    
![image](https://user-images.githubusercontent.com/75806093/134867168-6708e1b7-77d9-4413-afb6-ee19e0d9dc06.png)
    
![image](https://user-images.githubusercontent.com/75806093/134867262-df5f4a7f-aeb1-439f-8d32-1c4e1198b68b.png)
    
![image](https://user-images.githubusercontent.com/75806093/134867387-b25ede15-e40c-4a05-9b2e-d7479626d96e.png)

![image](https://user-images.githubusercontent.com/75806093/134867442-e77b7b7c-a891-447e-bc83-03beb25b087a.png)

![image](https://user-images.githubusercontent.com/75806093/134867516-f4b60049-a5ad-4295-a874-7dcc3570d5c7.png)
        
### Writing a Python Module   
    
![image](https://user-images.githubusercontent.com/75806093/134868184-b958b68f-e9b4-45f8-b615-e0e8566b78ec.png)
    
![image](https://user-images.githubusercontent.com/75806093/134868249-0ff42c9d-0f26-463f-b390-d9d730383688.png)
    
![image](https://user-images.githubusercontent.com/75806093/134868280-0044e815-e2d9-40f2-9ec0-9f6a614e1245.png)
    
![image](https://user-images.githubusercontent.com/75806093/134868574-cb00cfa6-e508-4991-a48b-c5f6bc7ae818.png)
    
![image](https://user-images.githubusercontent.com/75806093/134868684-cd4a5720-f396-4e41-ad63-78b27d3dc01f.png)
    
![image](https://user-images.githubusercontent.com/75806093/134868773-220586da-fb21-48de-94c8-583f07909727.png)
    
![image](https://user-images.githubusercontent.com/75806093/134868807-cc34bda7-dec7-4e83-a345-41e5286afd3c.png)

![image](https://user-images.githubusercontent.com/75806093/134868918-5cba3259-5f44-4e51-9ba0-fd88935da2a9.png)
    
![image](https://user-images.githubusercontent.com/75806093/135037515-5f034a5f-645d-4e59-9fd6-5c233d375fa6.png)
    
![image](https://user-images.githubusercontent.com/75806093/135037570-e4e62af9-0b6a-4427-a889-f2f4590b9ab8.png)

![image](https://user-images.githubusercontent.com/75806093/135037671-709e340f-d1e9-4d25-a48e-8d5d3fd1c9db.png)

![image](https://user-images.githubusercontent.com/75806093/135037721-38c4618b-7778-4d6e-82c3-3aef2d378468.png)

![image](https://user-images.githubusercontent.com/75806093/135037859-a8aee211-63d0-41d4-b2fd-a2fbb8d8938a.png)
    
![image](https://user-images.githubusercontent.com/75806093/135037894-dca0dac6-7bdb-4755-8f38-7667b2632485.png)
    
### Utilizing Classes   
    
![image](https://user-images.githubusercontent.com/75806093/135646747-7f0a9643-a757-4eca-8ed5-6ac2d65d9f2e.png)
    
![image](https://user-images.githubusercontent.com/75806093/135646888-1a95af07-f900-4c73-bbab-13f8d5190b4b.png)
    
![image](https://user-images.githubusercontent.com/75806093/135646979-58e9567f-4cc3-4be2-a3a6-c6fbbfa67f2e.png)
    
![image](https://user-images.githubusercontent.com/75806093/135647153-4c590014-e669-43ab-8e4d-9de953c73fcf.png)

Adding functionality to classes
    
-
    
Classes and the DRY principle
    
![image](https://user-images.githubusercontent.com/75806093/135647841-4388576c-ab4f-40e9-bdf8-ee1f53ea7947.png)
    
![image](https://user-images.githubusercontent.com/75806093/135647926-b3bef601-d722-43df-b02b-153644151628.png)
    
![image](https://user-images.githubusercontent.com/75806093/135648003-83ecb369-1139-4487-acfb-68e42ea1d462.png)
    
![image](https://user-images.githubusercontent.com/75806093/135648080-49ea243e-af3a-4734-b302-e22c8b001527.png)
    
Multilevel inheritance
    
![image](https://user-images.githubusercontent.com/75806093/135648331-524df1a0-1f8d-4074-af1f-06e3c752aa36.png)
    
![image](https://user-images.githubusercontent.com/75806093/135648406-f13f41ef-3ce0-4631-985d-a93c25ef461f.png)

![image](https://user-images.githubusercontent.com/75806093/135648454-9ebba269-8587-4467-a547-762f1484a32c.png)
    
### Maintainability   
    
Documentation    
    
![image](https://user-images.githubusercontent.com/75806093/135648733-d0b4df01-b558-4f13-a8a7-eeed884ac711.png)
    
![image](https://user-images.githubusercontent.com/75806093/135648822-24046bc8-2b0c-43a9-bda0-f8e463825595.png)
    
![image](https://user-images.githubusercontent.com/75806093/135648918-3edb1fa7-e9a3-4a5f-b9e5-5e96c028bc19.png)
    
![image](https://user-images.githubusercontent.com/75806093/135649011-5fe275fc-c9f8-4a03-8fb4-18f61ec079d2.png)

![image](https://user-images.githubusercontent.com/75806093/135649069-1d058a97-765f-48b8-b30d-8e6392477f4f.png)

Readability counts    
    
![image](https://user-images.githubusercontent.com/75806093/135649602-2803f129-1c67-45aa-a9c5-47eda4a0d8dc.png)
    
![image](https://user-images.githubusercontent.com/75806093/135649651-5c69c282-b7cc-4357-99c8-68cd2fcccc06.png)
    
Unit testing    
    
![image](https://user-images.githubusercontent.com/75806093/135650038-019a5bf4-72c7-4e98-ac84-4156ff1b9d59.png)

![image](https://user-images.githubusercontent.com/75806093/135650097-d7597ba8-e807-4e6d-a2f3-dbdcffa897c2.png)
    
pytest
    
![image](https://user-images.githubusercontent.com/75806093/135650145-c0afd063-c50a-4964-a2f1-009b0b5b0825.png)
    
![image](https://user-images.githubusercontent.com/75806093/135650198-aecb818a-f8a5-47c4-a0bb-c18114266120.png)
    
![image](https://user-images.githubusercontent.com/75806093/135650239-e6bcdecb-14d9-4345-a69d-929000771966.png)
    
![image](https://user-images.githubusercontent.com/75806093/135650301-3886696b-644f-4261-9330-6de88226e802.png)
    
![image](https://user-images.githubusercontent.com/75806093/135650343-0e710861-8861-430f-9482-3138b2e40744.png)
    
![image](https://user-images.githubusercontent.com/75806093/135650388-48dfae81-72e6-4b7f-b004-8797d7d42482.png)
    
![image](https://user-images.githubusercontent.com/75806093/135650419-fe976d0c-4441-4336-808e-9bcf101c7e57.png)
    
Documentation & testing in practice
    
![image](https://user-images.githubusercontent.com/75806093/135650598-6e034d22-4ac1-482b-abfb-d2ccc9f52895.png)
    
![image](https://user-images.githubusercontent.com/75806093/135650658-b8bc3613-8f81-48f9-aac8-020f2107bd4b.png)
    
![image](https://user-images.githubusercontent.com/75806093/135650744-c2b6e6ec-22cf-43b8-aacb-c42215144f1a.png)    
    
<a id="developing-python-packages"></a>Developing Python Packages  
    
### From Loose Code to Local Package

![image](https://user-images.githubusercontent.com/75806093/135719183-12dcbf2e-7264-46e4-a3f1-0f6028dad65c.png)
    
![image](https://user-images.githubusercontent.com/75806093/135719193-68c3b349-3b2c-440b-a4df-537acc8f5ec7.png)
    
![image](https://user-images.githubusercontent.com/75806093/135719215-35e62719-1cbf-425d-99c4-35d07034e38c.png)
    
![image](https://user-images.githubusercontent.com/75806093/135719241-61ae803b-4950-4c37-8e00-d0fa69343a0e.png)
    
![image](https://user-images.githubusercontent.com/75806093/135719254-122020e6-69d1-4f50-8752-849bbc5be99c.png)
    
![image](https://user-images.githubusercontent.com/75806093/135719265-677d8395-2a93-4586-9d64-a196cf8ab55e.png)
    
Documentation    
    
![image](https://user-images.githubusercontent.com/75806093/135719455-1f746c8d-0e47-48c8-98bd-71a54a238102.png)
    
Structuring imports
    
-    
    
### Install Your Package from Anywhere    
    
![image](https://user-images.githubusercontent.com/75806093/135719782-8cdf385b-3fa7-4210-87d9-92783b5fe478.png)
    
![image](https://user-images.githubusercontent.com/75806093/135719794-cb4d779b-4f33-49c6-a47b-4bc5a89fb5e6.png)
    
![image](https://user-images.githubusercontent.com/75806093/135719799-cb9274c1-28ec-42bc-b234-0933b2cd7f55.png)
    
![image](https://user-images.githubusercontent.com/75806093/135719804-07d78430-b319-4c1f-989d-0eb5418a70e0.png)
    
Dealing with dependencies
    
![image](https://user-images.githubusercontent.com/75806093/135719863-ddce4643-53ea-49dc-b801-dd9e8abcd859.png)
    
![image](https://user-images.githubusercontent.com/75806093/135719867-70100832-b990-44d6-8e3f-8660b0b2e74c.png)
    
![image](https://user-images.githubusercontent.com/75806093/135719872-a62e196c-938e-447c-88ef-da9d4f96cb49.png)
    
![image](https://user-images.githubusercontent.com/75806093/135719878-b4ef764a-79d9-418b-8d24-b1463d68994a.png)
    
![image](https://user-images.githubusercontent.com/75806093/135719883-fdabd0c3-26e2-46a8-b6e1-0bf5b3d10846.png)
    
Including licences and writing READMEs    
    
![image](https://user-images.githubusercontent.com/75806093/135719895-60836699-6eb5-4b27-93fa-c48b6a77b84a.png)

![image](https://user-images.githubusercontent.com/75806093/135719898-45178a75-943b-41fd-a877-5980ba5e0220.png)
    
![image](https://user-images.githubusercontent.com/75806093/135719901-c687bb8f-1464-4177-9e86-ba2c2ca8505f.png)
    
![image](https://user-images.githubusercontent.com/75806093/135719906-0c63d132-37bc-428d-b497-29811a146403.png)
    
![image](https://user-images.githubusercontent.com/75806093/135719913-7f3fe969-62b8-403a-831e-e461deabf4e5.png)
    
![image](https://user-images.githubusercontent.com/75806093/135719923-9cf4cf5e-14b5-4689-a8d4-292d0d9a0174.png)
    
![image](https://user-images.githubusercontent.com/75806093/135719932-2f91178a-8720-4872-b57c-d9adeb776d37.png)
    
![image](https://user-images.githubusercontent.com/75806093/135719955-b32061e9-71e2-4a9a-8ba0-72515a4a72b7.png)
    
Publishing your package    
    
![image](https://user-images.githubusercontent.com/75806093/135719985-fa1beff9-f14c-477a-8cca-dac13d766cf6.png)
    
![image](https://user-images.githubusercontent.com/75806093/135719993-a915f30f-ae7a-4682-8ce7-a523ed949109.png)
    
![image](https://user-images.githubusercontent.com/75806093/135720008-0fd09c1e-19bb-4dbd-8004-d6a23760e45d.png)
    
![image](https://user-images.githubusercontent.com/75806093/135720021-c9347bd2-d6f7-4163-832c-55f6bcef54a2.png)

![image](https://user-images.githubusercontent.com/75806093/135720042-feda3c92-c6a3-4ee6-a8e5-ac55ed9f4443.png)
    
### Increasing Your Package Quality    
       
- slides    
    
### Rapid Package Development    
    
- slides    
    
# <a id="unit-testing-for-ds"></a>Unit Testing for Data Science in Python    
    
### Unit testing basics   

![image](https://user-images.githubusercontent.com/75806093/135725854-ab787bf6-6595-4496-88af-f25da6f03669.png)
    
![image](https://user-images.githubusercontent.com/75806093/135725877-f2c94b21-2864-4691-b068-fb5c996a0f5d.png)
    
![image](https://user-images.githubusercontent.com/75806093/135725928-169124db-e69a-4594-ac5e-b3be3b14be71.png)
    
Write a simple unit test using pytest
    
![image](https://user-images.githubusercontent.com/75806093/135725993-3ab9b3a4-ee97-4f84-b604-21a40619ff3c.png)
    
![image](https://user-images.githubusercontent.com/75806093/135726009-8cb2e5f4-f3c0-49b8-be58-3d98c83b5916.png)
    
![image](https://user-images.githubusercontent.com/75806093/135726021-eef04fbf-19b1-4223-bbd8-b50999e2085c.png)
    
![image](https://user-images.githubusercontent.com/75806093/135726023-7d8cb435-363b-4c0c-a367-46b70bd62a70.png)
    
![image](https://user-images.githubusercontent.com/75806093/135726031-c451a383-e917-497b-aba5-cf644df8c7bd.png)
    
![image](https://user-images.githubusercontent.com/75806093/135726043-996720dc-806d-4923-a0bf-4c24293fd2dc.png)

![image](https://user-images.githubusercontent.com/75806093/135726082-46849878-41f5-40ea-afb5-be48909410fe.png)
    
Understanding test result report
    
![image](https://user-images.githubusercontent.com/75806093/135726228-6f27594c-f134-4d36-85f3-87259eb48889.png)
    
![image](https://user-images.githubusercontent.com/75806093/135726282-00ac9a52-c3af-4f02-b600-33510b590f69.png)

![image](https://user-images.githubusercontent.com/75806093/135726294-5638b7b0-eef7-4a6b-b22f-14baa527f750.png)
    
![image](https://user-images.githubusercontent.com/75806093/135726301-ee24b9e1-1bb0-4cec-ad4c-cca1fadf13be.png)
    
More benefits and test types    
    
-    
    
### Intermediate unit testing   

![image](https://user-images.githubusercontent.com/75806093/135769472-a60e7e46-a99d-4bdf-af0b-aea780558f73.png)
    
![image](https://user-images.githubusercontent.com/75806093/135769529-cdb3bee0-df5e-478c-9c3f-2f897ff7a465.png)
    
![image](https://user-images.githubusercontent.com/75806093/135769757-7afa4cb1-22e4-49f2-8e0e-1fdac89bb031.png)
    
![image](https://user-images.githubusercontent.com/75806093/135769769-2bd529ff-52ba-40d9-8a1c-c5b0c7a8909b.png)
    
![image](https://user-images.githubusercontent.com/75806093/135769789-303251f7-0094-4e7b-ae56-d011cc8145ae.png)
    
![image](https://user-images.githubusercontent.com/75806093/135769796-eec138ee-02c4-498c-8e42-d3cfc55436d4.png)

![image](https://user-images.githubusercontent.com/75806093/135769801-c8e8a8a6-a739-4e7d-b81f-6c8f376b9b69.png)
    
![image](https://user-images.githubusercontent.com/75806093/135769807-9a0efe83-d8fe-44fc-a8c4-68d7b27382a0.png)
    
![image](https://user-images.githubusercontent.com/75806093/135769813-213ad0d1-b9c8-4343-b0df-d97557f20f3b.png)
    
![image](https://user-images.githubusercontent.com/75806093/135769827-d2ffcd5c-93f8-4da5-8b91-fa4561081070.png)
    
![image](https://user-images.githubusercontent.com/75806093/135769838-57a0e34c-5de6-4073-86b0-5f5be6705fe0.png)
    
![image](https://user-images.githubusercontent.com/75806093/135769845-45e78aa4-5f62-4f82-a8f5-ee1b05c4eed3.png)
    
![image](https://user-images.githubusercontent.com/75806093/135769851-8a4e53c0-1874-4712-9f50-bafa1aba6acb.png)

Writing unit tests is often skipped    
    
![image](https://user-images.githubusercontent.com/75806093/135769891-edf31040-5f95-4458-abd7-9778d4af1af3.png)
    
![image](https://user-images.githubusercontent.com/75806093/135769903-b2120450-298d-410b-9b33-3e09eedd51d3.png)

![image](https://user-images.githubusercontent.com/75806093/135769919-c6fbcfb4-7465-459a-93c8-4d5e15c23ad1.png)
    
![image](https://user-images.githubusercontent.com/75806093/135769933-9ceaa564-2ccf-4cd0-9e50-22e5503107e5.png)
    
![image](https://user-images.githubusercontent.com/75806093/135769941-414f8deb-de6c-47ab-9a3f-f7af56465f1e.png)
    
![image](https://user-images.githubusercontent.com/75806093/135769948-f8c28202-e034-49b8-adcf-3448b0627a9c.png)
    
### Test Organization and Execution   

![image](https://user-images.githubusercontent.com/75806093/135770134-8ea4662b-9012-42b5-bf91-3ccfb8464b83.png)
    
![image](https://user-images.githubusercontent.com/75806093/135770143-3557c085-1c3f-41ed-a596-ec5629cb38cf.png)
    
![image](https://user-images.githubusercontent.com/75806093/135770182-99bd48c3-839a-4a13-9ba9-f64130ce9e66.png)
    
![image](https://user-images.githubusercontent.com/75806093/135770195-288474c9-ec0c-4ec9-9fa7-d6052ab3c960.png)
    
![image](https://user-images.githubusercontent.com/75806093/135770205-4837793b-5cb0-4114-b361-5482aec175ef.png)
    
![image](https://user-images.githubusercontent.com/75806093/135770219-bf6f5369-5359-484f-9b25-5634487d4f6c.png)
    
![image](https://user-images.githubusercontent.com/75806093/135770224-a5295793-4ef4-4cb4-8efe-327fc8a06bd1.png)
    
![image](https://user-images.githubusercontent.com/75806093/135770239-7d787341-1201-4510-9fec-de40426853bd.png)
    
![image](https://user-images.githubusercontent.com/75806093/135770259-69b7e570-9dae-4227-ad06-2dbfbd5a2ff1.png)
    
![image](https://user-images.githubusercontent.com/75806093/135770276-08bad5b0-3f01-447f-b22d-1fb35da244b5.png)
    
![image](https://user-images.githubusercontent.com/75806093/135770289-d11c8d4a-2b2f-4c4d-a516-bdbb961bdc89.png)
    
![image](https://user-images.githubusercontent.com/75806093/135770299-0aaa1440-3a5d-4956-991e-98be82e33289.png)

![image](https://user-images.githubusercontent.com/75806093/135770313-def20a08-f76c-4957-95d9-ce41590d286a.png)
    
![image](https://user-images.githubusercontent.com/75806093/135770322-e83c2b0b-5f57-4a8e-91f0-754d75d86da8.png)
    
![image](https://user-images.githubusercontent.com/75806093/135770327-7efb865c-a0bb-4dc3-aa50-183e5507a4fe.png)
    
![image](https://user-images.githubusercontent.com/75806093/135770454-325ab172-6378-4067-822d-43758a95b354.png)
    
CI server - Travis CI    
    
![image](https://user-images.githubusercontent.com/75806093/135770481-8bd2c3f1-bc29-4601-b7a1-1f53d978cbd7.png)
    
![image](https://user-images.githubusercontent.com/75806093/135770521-9e0d9854-0dc1-4fa7-a05c-6b7f133b7a80.png)
    
![image](https://user-images.githubusercontent.com/75806093/135770552-4829ed7f-4316-44ca-9404-6d1cb661dde7.png)
    
![image](https://user-images.githubusercontent.com/75806093/135770563-1e51347d-c43b-4757-b8ff-3f0e19deed2b.png)
    
![image](https://user-images.githubusercontent.com/75806093/135770569-604d6c83-b714-475c-808e-e345ff24da6b.png)
    
![image](https://user-images.githubusercontent.com/75806093/135770574-f65cb0fa-9910-4687-ba3c-ce6690994d16.png)

![image](https://user-images.githubusercontent.com/75806093/135770590-e72e2309-4f79-4d42-b78f-91b357544f47.png)

![image](https://user-images.githubusercontent.com/75806093/135770603-d3a02817-778e-4594-9906-b082dc524e24.png)
    
![image](https://user-images.githubusercontent.com/75806093/135770614-121b5fb7-0421-4889-a73a-a07cc84fef88.png)
    
![image](https://user-images.githubusercontent.com/75806093/135770624-96310a5b-d724-4403-a837-d582fe042f86.png)
    
![image](https://user-images.githubusercontent.com/75806093/135770645-52ecc0c0-382c-44b3-a35c-d9ad41121417.png)
    
### Testing Models, Plots and Much More   

-   
    
# <a id="object-oriented-programming"></a>Object-Oriented Programming in Python
    
### OOP Fundamentals
    
![image](https://user-images.githubusercontent.com/75806093/136337004-f622972f-1177-46aa-bd8b-480d73479ed2.png)

Object as data structures -> object = state + behavior
    
    encapsulation -> bundling data with code operating on it
    
Classes as blueprint -> class: blueprint for objects outlining possible states and behaviors    
    
![image](https://user-images.githubusercontent.com/75806093/136337279-4fa4819e-99e8-45cd-886b-c473f0e6a974.png)
    
![image](https://user-images.githubusercontent.com/75806093/136337373-a3f9f7e5-f08b-4541-88fc-14b2f169980d.png)
    
![image](https://user-images.githubusercontent.com/75806093/136337425-27ea7c09-23e7-47b8-9ad0-cf4d0ae115fd.png)
    
Class anatomy: attributes and methods    
    
![image](https://user-images.githubusercontent.com/75806093/136338158-7501aafe-c4a4-42c3-8219-22490126c79c.png)
    
![image](https://user-images.githubusercontent.com/75806093/136338249-4ea78a5d-2bc2-496c-acea-35f78e86303c.png)
    
![image](https://user-images.githubusercontent.com/75806093/136338337-9f940861-96b5-496d-abf5-357ec8222537.png)
    
![image](https://user-images.githubusercontent.com/75806093/136338440-696a07a0-fe27-4a5c-8511-6c4382aaa4c2.png)
    
![image](https://user-images.githubusercontent.com/75806093/136338575-97f0494e-ab5a-4791-995f-1a9f2ad55739.png)

![image](https://user-images.githubusercontent.com/75806093/136338637-2ace880b-7150-4d38-99c7-08fc54850d1f.png)

Class anatomy: the __init__ constructor
    
![image](https://user-images.githubusercontent.com/75806093/136340353-2a005056-e520-4ca0-90a4-84d41988fbf6.png)
    
![image](https://user-images.githubusercontent.com/75806093/136340546-e8b59982-fbcf-4a07-bff3-72e96d230c26.png)
    
![image](https://user-images.githubusercontent.com/75806093/136340649-aac58e01-90ea-491c-be18-ed2c2221aad4.png)
    
![image](https://user-images.githubusercontent.com/75806093/136340729-33ed44a3-77db-48a0-8c52-afc7a75c0491.png)
    
![image](https://user-images.githubusercontent.com/75806093/136340791-f6b2520e-e9f4-4643-a7dc-b5ed3ca3dbe6.png)
    
### Inheritance and Polymorphism    
    
![image](https://user-images.githubusercontent.com/75806093/136355093-d2e39604-4189-4d8d-a00a-654598136ec2.png)
    
![image](https://user-images.githubusercontent.com/75806093/136355605-73c10839-a557-4442-bcb6-b8c391640354.png)
    
![image](https://user-images.githubusercontent.com/75806093/136355640-421c55e0-bb1e-480a-b6cb-fa745e23d5ae.png)
    
![image](https://user-images.githubusercontent.com/75806093/136355679-3b5357f7-60ed-4e11-a4a2-4a6ea05d2126.png)
    
![image](https://user-images.githubusercontent.com/75806093/136355705-2478eccf-15ea-4da0-9efe-8d248ac9938b.png)
    
![image](https://user-images.githubusercontent.com/75806093/136355743-6c9b03a8-4d25-4ee4-aee9-440eae6113d1.png)
    
![image](https://user-images.githubusercontent.com/75806093/136355810-39855170-a082-45c5-98ad-47003d80eb36.png)
    
![image](https://user-images.githubusercontent.com/75806093/136355853-6e92f19b-562c-447a-8d3b-c7de84a27851.png)
    
![image](https://user-images.githubusercontent.com/75806093/136355906-fb29d739-5be6-4ee9-9fc6-3de666c0ece6.png)
    
Class inheritance    
    
![image](https://user-images.githubusercontent.com/75806093/136356383-e93c6bee-19cc-47a7-9a54-1efcb125e129.png)
    
![image](https://user-images.githubusercontent.com/75806093/136356417-162eb6b8-e087-4e69-9961-29741ddb9294.png)
    
![image](https://user-images.githubusercontent.com/75806093/136356443-c7f04c5f-4a17-4d66-b6ab-7e5b326acfc2.png)
    
![image](https://user-images.githubusercontent.com/75806093/136356482-f81e808b-bbf8-473e-9206-d7105de5d31e.png)

![image](https://user-images.githubusercontent.com/75806093/136356524-f0b057b1-88df-408e-b61a-6c30d8a55433.png)
    
![image](https://user-images.githubusercontent.com/75806093/136356555-aab630aa-c1e7-496c-8229-82b190c05b52.png)
    
![image](https://user-images.githubusercontent.com/75806093/136356582-c8dc11e9-ecfa-4fe8-8f7e-982508d70475.png)

Customizing functionality via inheritance    
    
![image](https://user-images.githubusercontent.com/75806093/136356650-6e4b9bee-fe6f-4d0b-a341-bc8362d5942b.png)
    
![image](https://user-images.githubusercontent.com/75806093/136356683-c402b428-59a3-4794-8d0a-2b14175a8eb8.png)
    
![image](https://user-images.githubusercontent.com/75806093/136356707-896be092-8c3b-407a-8db3-f5996e2a8ea3.png)
    
![image](https://user-images.githubusercontent.com/75806093/136356736-4dbb6ef9-fedb-491d-8474-a861b8dbde38.png)
    
![image](https://user-images.githubusercontent.com/75806093/136356780-2f6e8c12-e5e3-4e02-99ff-56bd42e2c657.png)
    
![image](https://user-images.githubusercontent.com/75806093/136356841-f8644d99-d149-4429-adc9-68ed6b078470.png)
    
### Integrating with Standard Python   
 
Operator overloading: comparison    
    
![image](https://user-images.githubusercontent.com/75806093/136357203-88615566-fa0c-4823-99ec-9c061fdf86c1.png)
    
![image](https://user-images.githubusercontent.com/75806093/136357228-663dc072-f40e-4c15-93cb-7ade988fbc89.png)
    
![image](https://user-images.githubusercontent.com/75806093/136357257-73b74b1a-4ecf-4014-85f2-d3653118298b.png)
    
![image](https://user-images.githubusercontent.com/75806093/136357308-c384fe2e-a132-4c30-a3ac-9c103a1531ba.png)
    
Operator overloading: string representation    
    
![image](https://user-images.githubusercontent.com/75806093/136357372-116c1e76-1598-4c99-82bc-d6a12e0b61fc.png)
    
![image](https://user-images.githubusercontent.com/75806093/136357403-3ab0b08f-de9b-449c-bcd1-6fa2c603db64.png)
    
![image](https://user-images.githubusercontent.com/75806093/136357436-b875ff67-d816-4733-a6c0-48aafe34d476.png)
    
![image](https://user-images.githubusercontent.com/75806093/136357471-4457186e-03de-4b64-b038-c5e29e3a9530.png)
    
Exceptions    
    
![image](https://user-images.githubusercontent.com/75806093/136357544-f1cdd62f-f7d5-408e-9202-403db1100372.png)

![image](https://user-images.githubusercontent.com/75806093/136357583-d72c10cb-c462-4875-9408-5aacd78c0141.png)
    
![image](https://user-images.githubusercontent.com/75806093/136357614-fad5f3b8-2be3-4d2a-b3cb-46c159c94419.png)
    
![image](https://user-images.githubusercontent.com/75806093/136357647-736e3ddb-f2a5-4ffe-b491-ef3aa82fcc32.png)
    
![image](https://user-images.githubusercontent.com/75806093/136357699-c643e8fd-a8ef-4b32-9939-2ebda6a9d352.png)
    
![image](https://user-images.githubusercontent.com/75806093/136357725-ed09efe1-e6a0-457f-9613-f6e3af7a53e2.png)
    
![image](https://user-images.githubusercontent.com/75806093/136357753-76b7ef52-c4ec-4403-b9fb-215e067ca2b6.png)
    
### Best Practices of Class Design   
    
Designing for inheritance and polymorphism    
    
![image](https://user-images.githubusercontent.com/75806093/136358005-df5f7db6-4d4f-4c5a-a4c3-fe3b8ca03dcc.png)
    
![image](https://user-images.githubusercontent.com/75806093/136358039-aa902a86-a353-46ae-aac0-5100d2095fce.png)
    
![image](https://user-images.githubusercontent.com/75806093/136358071-247efca1-344f-4b34-b05a-24f608ff972e.png)
    
![image](https://user-images.githubusercontent.com/75806093/136358108-cb7a750c-e636-4e72-ae80-c412738d9114.png)

![image](https://user-images.githubusercontent.com/75806093/136358164-176b3f5d-e7ab-420f-ad0d-dcd25b9f795c.png)
    
![image](https://user-images.githubusercontent.com/75806093/136358201-e5789c7c-9535-4503-a5a5-12888a2cd400.png)
    
No LSP - No Inheritance    
    
Managing data access: private attributes    
    
![image](https://user-images.githubusercontent.com/75806093/136358318-1a85c60d-2333-465c-8f06-90b9831b4871.png)
    
![image](https://user-images.githubusercontent.com/75806093/136358364-13d82300-0913-4d35-853e-dcf35d2b4b2f.png)
    
![image](https://user-images.githubusercontent.com/75806093/136358399-2dcfc359-56fb-48c2-a59c-7e7f93902050.png)
    
Properties    
    
![image](https://user-images.githubusercontent.com/75806093/136358460-c11c9ba6-a030-4399-9838-909eca753d30.png)
    
![image](https://user-images.githubusercontent.com/75806093/136358487-0103eb2d-194a-403e-afcb-cde4db03b50f.png)
    
![image](https://user-images.githubusercontent.com/75806093/136358512-84dd9d65-d5d8-491e-8064-77ef82a7f3f1.png)
    
![image](https://user-images.githubusercontent.com/75806093/136358546-7b5ab5e2-d6d0-4029-b05f-cd1e0cd9f703.png)
    
![image](https://user-images.githubusercontent.com/75806093/136358576-f788e004-4f8e-48c6-8e40-898f97796173.png)
    
![image](https://user-images.githubusercontent.com/75806093/136358612-cee94eca-26b8-4808-a7a2-14f6f74bedeb.png)
    
# END
