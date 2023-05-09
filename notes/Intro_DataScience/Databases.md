# DBMS

# Table of Content
- [Introduction](#introduction)
  - [Information and Data](#information-and-data)
  - [Databases](#databases)
  - [Data Models](#data-models)
  - [Language and Users](#language-and-users)
- [Database Management System](#database-management-system)
- [The Relational Model](#the-relational-model)
  - [The Structure](#the-structure)
  - [Integrity Constraints](#integrity-constraints)

# <a id="introduction"></a>Introduction
Collection, organization and storage of data are major tasks in many human
activities and in every computer-based system.

Computer-based systems ensure that this data is permanently
maintained, quickly updated to show changes, and made accessible to the
queries of users who can be remote from one another and from the computer
where the data is kept.

# <a id="information-and-data"></a>Information and Data
**Data**

Raw facts, or facts that have not yet been processed to reveal their meaning to the end user.
Keep in mind that raw data must be properly formatted for storage, processing and presentation.
By data, we mean known facts that can be recorded and that have embedded meaning.A datum is a unit of data. Meaningful data combined to form information. Hence, information is interpreted data - data provided with semantics.

**Information**

The result of processing raw data to reveal its meaning.
Information consists of transformed data and facilitates decision making.
To reveal meaning, information requires context.

**Key points about Data and Information**
- Data constitutes the building blocks of information
- Information is produced by processing data
- Information is used to reveal the meaning of data
- Accurate, relevant and timely information is the key to good decision making
- Good decision making is the key to organizational survival in a global environment

**Knowledge** refers to the useful use of information. As you know, that information can be transported, stored, and shared without any problems and difficulties, but the same cannot be said about knowledge. Knowledge necessarily involves personal experience and practice.

# <a id="databases"></a>Databases
A database is one of the essential components for many applications and is used for storing a series of data in a single set. In other words, it is a group/package of information that is put in order so that it can be easily accessed, manage, and update.

There are different types of databases. They are:
- Bibliographic
- Full-text
- Numeric
- Images
    
Database: A shared integrated computer structure that houses a collection of related data.

A database contains two types of related data:
- End-user data, that is raw facts of interest to the end user
- Metadata, that is data about the data.

## Database Environment
One of the primary aims of a database is to supply users with an abstract view of data, hiding a certain element of how data is stored and manipulated. Therefore, the starting point for the design of a database should be an abstract and general description of the information needs of the organization that is to be represented in the database. And hence you will require an environment to store data and make it work as a database.

A database environment is a collective system of components that comprise and regulates the group of data, management, and use of data, which consist of software, hardware, people, techniques of handling database, and the data also.

    - Hardware in a database environment means the computers and computer peripherals that are being used to manage a database
    - Software means the whole thing right from the operating system (OS) to the application programs that include database management software
    - People in a database environment include those people who administrate and use the system
    - The techniques are the rules, concepts, and instructions given to both the people and the software along with the data with the group of facts and information positioned within the database environment

![image](https://user-images.githubusercontent.com/75806093/124357021-a0807b80-dc19-11eb-9367-5bec9b334d90.png)

## Database Architecture
A DBMS architecture is depending on its design and can be of the following types:
- Centralized
- Decentralized
- Hierarchical

DBMS architecture can be seen as either a single-tier or multi-tier. An architecture having n-tier splits the entire system into related but independent n modules that can be independently customized, changed, altered, or replaced.

# <a id="data-models"></a>Data Models
A data model is a combination of constructs used to organize data. Each data
model provides structuring mechanisms, similar to the type constructors of
programming languages, which allow the definition of new data types based
on constructors applied to predefined, elementary types.

- **Relational Data Model**

The relational data model, at present the most widespread, provides the
relation constructor, which makes it possible to organize data in a collection
of records with a fixed structure.
A relation is often represented by means of a table, whose rows show specific records and whose columns correspond to the fields of the record; the order of rows and columns is irrelevant.

- **Hierarchical data model**

A hierarchical database model is a data model in which the data are organized into a tree-like structure. The data are stored as records which are connected to one another through links. A record is a collection of fields, with each field containing only one value. The type of a record defines which fields the record contains. 

![image](https://user-images.githubusercontent.com/75806093/124357650-fe629280-dc1c-11eb-905e-03da43884f34.png)

- **Network Data Model**

The network database model was created to solve the shortcomings of the hierarchical database model. In this type of model, a child can be linked to multiple parents, a feature that was not supported by the hierarchical data model. The parent nodes are known as owners and the child nodes are called members.

![image](https://user-images.githubusercontent.com/75806093/124357715-500b1d00-dc1d-11eb-891e-8587dcb667db.png)

- **Object Data Model**

An object data model is a data model that treats data sets as "objects" by assigning properties and values to them, and otherwise structuring data to be more malleable and versatile than a simple list of data points.

## Schemas and Instances
In a database there is a part that is invariant in time, called the schema of the
database, made up of the characteristics of the data, and a part that changes
with time, called the instance or state of the database, made up of the actual
values.

The schema of a relation consists of its heading, that is, the name of the relation, followed by the names of its attributes.

The instance of a relation is made up of a collection of rows, which vary with time.

## Abstraction Levels
It is divided into three levels, known respectively as logical, internal, and
external; for each level there is a schema.

- **Logical Schema**
The logical schema is a description of the whole database by means of the
logical model adopted by the dbms (that is, one of the models described
earlier: relational, hierarchical, network or object).
- **Internal Schema**
The internal schema describes the implementation of the logical schema by
means of physical storage structures.
- **External Schema**
An external schema is the description of a portion of the database by means
of the logical model. An external schema can offer a different organization of
the data in order to reflect the point of view of a particular user or group of
users.

## Data Independence
This property allows users and applications programs to refer to data at a high level of abstraction, ignoring implementation details.
More precisely, data independence presents two aspects, physical and logical independence.

- **Physical Independence**
Physical independence allows interaction with the dbms independently of
the physical aspects of the data.
- **Logical Independence**
Logical independence guarantees that the interaction with the external level
of the database is independent of the logical level.

# <a id="languages-and-users"></a>Languages and Users
## Database Languages
- DDL - Data Definition Language

The data definition language (ddl) is used to define the logical, external
and physical schemas and access authorizations.

- DML - Data Manipulation Language
The data manipulation language (dml) is used for querying and updating
database instances.

(SQL offer the features of both a DDL and a DML language in an integrated form)

Ways to access to data

    - Through interactive textual languages, such as sql.
    - Through commands similar to the interactive ones embedded in traditional programming languages, called host languages because they ‘host’ commands written in the database language.
    - Through commands similar to the interactive ones embedded in ad hoc development languages, often with specific features.
    - Through friendly interfaces that allow the formulation of queries without the use of a textual language.

## Users and Designers
Various categories of people can interact with a database or with a dbms.

- DBA - Database Administrator

The database administrator (dba) is the person responsible for the design,
control and administration of the database.

- Application designers and programmers

The application designers and programmers define and create programs
that access the database.

- Users

The users employ the database for their own activities. They can, in their
turn, be divided into two categories: end users and casual users.
  - End users, who use transactions, that is, programs that carry out frequent and predefined activities, with few exceptions known and taken into account in advance.
  - Casual users, able to use the interactive languages to gain access to the database, formulating queries (or updates) of various types. They can be specialists in the language they use and interact frequently with the database. Note that the term ‘casual’ means that the queries are not predefined.

# <a id="database-management-system"></a>Database Management System
A database management system (DBMS) refers to the technology for creating and managing databases. DBMS is a software tool to organize (create, retrieve, update, and manage) data in a database.

The main aim of a DBMS is to supply a way to store up and retrieve database information that is both convenient and efficient.

Database systems are meant to handle an extensive collection of information. **Management** of data involves both defining structures for storage of information and providing mechanisms that can do the manipulation of those stored information. Moreover, the database system must ensure the safety of the information stored, despite system crashes or attempts at unauthorized access.

### Why use DBMS
- To develop software applications In less time.
- Data independence and efficient use of data.
- For uniform data administration.
- For data integrity and security.
- For concurrent access to data, and data recovery from crashes.
- To use user-friendly declarative query language.

### Advantages of DBMS
- Data independence
- Efficient data access
- Data integrity and security
- Data administration

      - Data independence: Application programs should be as free or independent as possible from details of data representation and storage. DBMS can supply an abstract view of the data for insulating application code from such facts.
      - Efficient data access: DBMS utilizes a mixture of sophisticated concepts and techniques for storing and retrieving data competently. This feature becomes important in cases where the data is stored on external storage devices.
      - Data integrity and security: If data is accessed through the DBMS, the DBMS can enforce integrity constraints on the data.
      - Data administration: When several users share the data, integrating the administration of data can offer significant improvements. Experienced professionals understand the nature of the data being managed and can be responsible for organizing the data representation to reduce redundancy and make the data to retrieve efficiently.
   
### Components of DBMS
- Users: Users may be of any kind such as DB administrator, System developer, or database users.
- Database application: Database application may be Departmental, Personal, organization's and / or Internal.
- DBMS: Software that allows users to create and manipulate database access,
- Database: Collection of logical data as a single unit.

![image](https://user-images.githubusercontent.com/75806093/124356618-36ff6d80-dc17-11eb-8093-106bbb51afb9.png)

{(DBMS): a software system able to manage collections of data that are large,
shared and persistent, and to ensure their reliability and privacy. Like any
software product, a DBMS must be efficient and effective. A database is a
collection of data managed by a dbms.}

# <a id="relational-model"></a>Relational Model
Most current database systems are based on the relational model.
Relational Model represents how data is stored in Relational Databases. 
A relational database stores data in the form of relations (tables).

**Important Terminologies**
- Attribute: Attributes are the properties that define a relation.
- Relation Schema: A relation schema represents name of the relation with its attributes.
- Tuple: Each row in the relation is known as tuple. 
- Relation Instance: The set of tuples of a relation at a particular instance of time is called as relation instance. 
- Degree: The number of attributes in the relation is known as degree of the relation.
- Cardinality: The number of tuples in a relation is known as cardinality.
- Column: Column represents the set of values for a particular attribute.
- NULL Values: The value which is not known or unavailable is called NULL value.

# <a id="the-structure"></a>The Structure of the Relational Model

## Logical models in database systems
The relational model is based on two concepts, relation and table, which differ
in their nature but are highly related.
The notion of relation is formal, as it comes from mathematics, in particular from set theory, while the concept of table is simple and intuitive.
Their simultaneous presence is probably the major reason for the great success of the relational model. In fact, tables offer a natural understanding even to end users who come across them in many contexts other than in databases.

The relational model satisfies the requirement of data independence; users and programmers make reference only to relations (logical or external level), which are then implemented by means of appropriate physical structures; however, to gain access to the data it is not necessary to know about the physical structures themselves.

## Relations and Tables
![image](https://user-images.githubusercontent.com/75806093/124361226-40e09b00-dc2e-11eb-8aea-9bac565973df.png)

Let us recall from basic mathematics courses that, given two sets, D1 and D2, the cartesian product of D1 and D2, in symbols D1 X D2, is the set of ordered pairs (v1, v2), such that v1 is an element of D1 and v2 is an element of D2.

In mathematics, a relation on the sets D1 and D2 (called domains of the relation) is a subset of D1 X D2.

Relations can be represented graphically in table form.

The definitions of cartesian product and relation refer to two sets, but can
be generalized with respect to the number of sets.

The number n of the components of the cartesian product (and therefore of every n-tuple) is called the degree of the cartesian product and of the relation. The number of elements (that is, of n-tuples) of the relation is, as usual in set theory, the cardinality of the relation.

## Relations with Attributes
We can then remember that a relation is a set and therefore:

    • there is no defined order between the n-tuples; in the tables that represent them there is obviously a ‘presentation’ order, but it is immaterial, since two tables with the same rows, but in different order, represent the same relation;
    • the n-tuples of a relation are distinct one from the other, since among the elements of a set there cannot be two identical elements; therefore a table can represent a relation only if its rows are different from one another.

At the same time, each n-tuple has an ordering: the i-th value of each one
comes from the i-th domain. This is essential for understanding the meaning
of the data in the relation: if we were to swap the third and fourth
components around in the relation in an example, it would completely change
the meaning of our relation.

In computer science there is a tendency to prefer non-positional notations to positional ones; the former allows reference to the fields of a record by means of symbolic names, while the latter refers to the same fields through their ordering.

We introduce a non-positional notation, by associating names with the domains in a relation, referred to as attributes, which describe the ‘roles’ played by the domains.

By modifying the definition of relation with the introduction of attributes,
and still before giving the formal definition, we can see that the ordering of
attributes (and of the columns in the tabular representation) is irrelevant, it
is sufficient to refer to the attributes.

To formalize the concepts, let us establish the correspondence between
attributes and domains by means of a function DOM : X ∈ D, which
associates with each attribute A ∈ X a domain DOM(A) ∈ D. Then, let us say
that a tuple on a set of attributes X is a function t, which associates with each
attribute A ∈ X a value of the domain DOM(A). We can therefore give the
new definition of relation: a relation on X is a set of tuples on X.

![image](https://user-images.githubusercontent.com/75806093/124361777-1a702f00-dc31-11eb-8ba0-98c17084c163.png)

## Relations and Databases
A fundamental characteristics of the relational model, which is often expressed by saying that it is ‘valuebased’: the references between data in different relations are represented by means of the values of the domains that appear in the tuples.

Instead the network and hierarchical models, which were defined before the relational model, represent references explicitly by means of pointers and for this
reason are called ‘pointer-based’ models.

![image](https://user-images.githubusercontent.com/75806093/124361830-763ab800-dc31-11eb-86dd-f9b4f2a1ffe2.png)

## Incomplete Information and Null Values
The null value denotes an absence of information, and is an additional value, not in the domain.

- Unknown value: The null value is used because the real value cannot be recorded in the database.
- Non-existent value: The null value denotes the inapplicability of the attribute, or in other words, the non-existence of the value.
- No-information value: Tt tells us absolutely nothing: the value might or might not exist, and if it exists we don’t know what it is.

# <a id="integrity-constraints"></a>Integrity Constraints
While designing Relational Model, we define some conditions which must hold for data present in database are called Constraints. These constraints are checked before performing any operation (insertion, deletion and updation) in database. If there is a violation in any of constrains, operation will fail. 

- Domain Constraints: These are attribute level constraints. An attribute can only take values which lie inside the domain range.
- Key Integrity: Every relation in the database should have atleast one set of attributes which defines a tuple uniquely. Those set of attributes is called key.  A key has two properties: 
  - It should be unique for all tuples.
  - It can’t have NULL values.
- Referential Integrity: When one attribute of a relation can only take values from other attribute of same relation or any other relation, it is called referential integrity.

The concept of integrity constraint was introduced, as a property that must be satisfied by all correct database instances. Each constraint must be seen as a predicate, which associates the value true or false with each instance.
In general, we associate a collection of constraints with a database schema and we consider correct (or legal) the instances that satisfy all the constraints.

It is possible to classify the constraints according to the elements of the
database that are involved in it. There are two categories, the first of which
has some particular subcases.

- Intra-relational

A constraint is intra-relational if its satisfaction is defined with regard to a
single relation of the database.

  - Tuple constraint: a constraint that can be evaluated on each tuple independently from the others.
  - Value constraint (or domain constraint): a constraint defined with reference to
single values. (given that it imposes a restriction on the domain of the attribute)

- Inter-relational

A constraint is inter-relational if it involves more that one relation.

## Tuple Constraints
As we have said, tuple constraints express conditions on the values of each
tuple, independently of other tuples.

A possible syntax for these constraints permits the definition of boolean
expressions (that is, with connectives and, or and not) with atoms that
compare values of attributes (or arithmetical expressions using values of
attributes).

## Keys
A key is a set of attributes used to identify unambiguously the tuples in a relation.

- Superkey

![image](https://user-images.githubusercontent.com/75806093/124362398-cf581b00-dc34-11eb-833c-b1a51f96b4d7.png)

## Keys and Null Values
In the presence of null values for key values, it is no longer true that the values of the keys permit the unambiguous identification of the tuples of the relations and to establish connections between tuples of different relations.

The example clearly suggests the necessity of limiting the presence of null
values in the keys of relations.
In practice, we adopt a simple solution, which makes it possible to guarantee the unambiguous identification of each tuple and refer to it from within other relations: null values are forbidden on one of the keys (called the primary key) and usually (that is, unless specified otherwise) allowed on the others.

## Referential Constraints

![image](https://user-images.githubusercontent.com/75806093/124362530-b9972580-dc35-11eb-9aa3-5a72f729c433.png)

### Different Types of Keys in Relational Model

- Candidate Key: The minimal set of attribute which can uniquely identify a tuple is known as candidate key. 
- Super Key: The set of attributes which can uniquely identify a tuple is known as Super Key.
- Primary Key: There can be more than one candidate key in relation out of which one can be chosen as the primary key. 
- Alternate Key: The candidate key other than the primary key is called an alternate key. 
- Foreign Key: If an attribute can only take the values which are present as values of some other attribute, it will be a foreign key to the attribute to which it refers.
