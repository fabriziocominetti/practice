# Data Structures & Algorithms

# Table of Content
- [Data Structures](#data-structures)
  - [Array](#array)
  - [Linked List](#linked-list)
  - [Stack](#stack)
  - [Queue](#queue)
  - [Hash Table](#hash-table)
  - [Tree](#tree)
    - [Binary Tree](#binary-tree)
    - [Red-Black Tree](#red-black-tree)
- [Algorithms](#algorithms)
  - [Searching and Sorting](#searching-and-sorting)
    - [Searching](#searching) 
    - [Linear Search](#linear-search)
    - [Binary Search](#binary-search)
    - [Jump Search](#jump-search)
    - [Interpolation Search](#interpolation-search)
    - [Sorting](#sorting)
    - [Selection Sort](#selection-sort)
    - [Bubble Sort](#bubble-sort)
    - [Insertion Sort](#insertion-sort)
    - [Merge Sort](#merge-sort)
    - [Heap Sort](#heap-sort)
    - [Quicksort](#quicksort)
    - [Other Sort](#other-sort)
  - [Graph Algorithms](#graph-algorithms)
    - [Depth-first Search](#depth-first-search)
    - [Breadth-first Search](#breadth-first-search)
    - [Topological Sorting](#topological-sorting)
    - [Minimal Spanning Tree](#minimal-spanning-tree)

# <a id="data-structures"></a>Data Structures
![image](https://user-images.githubusercontent.com/75806093/124191124-9d737700-dac3-11eb-85f0-b13bab8516ed.png)

A data structure is a particular way of organizing data in a computer so that it can be used effectively.

Data structures can be subdivided into two major types:
- Linear Data Structures
A data structure is said to be linear if its elements combine to form any specific order.
{for ex. Arrays, Linked Lists, Stacks, Queues} 
- Non-linear Data Structures
This structure is mostly used for representing data that contains a hierarchical relationship among various elements.
{for ex. Graphs, Trees}

Types of data structures:
- Built-in data type (or Primitive)
These types of data types are predefined and has a fixed set of rules for declaration. In other words, these data types when belonging to a particular programming language has built-in support, and hence they are also called as built-in data types.
{for ex. Integer, Boolean, Character, Floating}
- Derived data type (or Non-primitive)
These data types can be implemented independently within a language. These data types are built by combining both primary and built-in data types and then associating operations on them.
{for ex. Array, Stack, Queue, List}

Basic operations of data structures:
- Traversing
- Searching
- Insertion
- Deletion
- Sorting
- Merging
 
## <a id="array"></a>Array
### Brief Description
The array is a fixed-size sequenced collection of variables belonging to the same data types. The array has adjacent memory locations to store values.

    - Element: Every item stored in an array is termed as an element
    - Index: each memory location of an element in an array is denoted by a numerical index which is used for identifying the element

Arrays have fixed size, so insertion and deletion are difficult as the elements are stored in consecutive memory locations.

### Basic operations
- Traversing: It prints all the array elements one after another.
- Searching: It searches for an element(s) using given index or by value.
- Updating: It is used to update an element at given index.

### Pros
-	Arrays allow random access to elements. This makes accessing elements by position faster.
-	Arrays have better cache locality that makes a pretty big difference in performance.
-	Arrays represent multiple data items of the same type using a single name.
### Cons
- You can't change the size
- Insertion and Deletion not possible

![image](https://user-images.githubusercontent.com/75806093/124191096-9187b500-dac3-11eb-8a06-867f3530060c.png)

## <a id="linked-list"></a>Linked List
### Brief Description
A linked list is a sequential structure that consists of a sequence of items in linear order which are linked to each other. Hence, you have to access data sequentially and random access is not possible.

    - Elements in a linked list are known as nodes.
    - Each node contains a key and a pointer to its successor node, known as next.
    - The attribute named head points to the first element of the linked list.
    - The last element of the linked list is known as the tail.

Types of linked list:
- Simple Linked List (or Singly)
Item navigation is forward only
- Doubly Linked List
Items can be navigated forward and backward
- Circular Linked List
Last item contains link of the first element as next and the first element has a link to the last element as previous

### Basic Operations
-	Insertion − Adds an element at the beginning of the list.
-	Deletion − Deletes an element at the beginning of the list.
-	Display − Displays the complete list.
-	Search − Searches an element using the given key.
-	Delete − Deletes an element using the given key.

### Pros
- Designed to optimize insertion and deletion
- Size can be modified
### Cons
- Slow at indexing and searching
- 
![image](https://user-images.githubusercontent.com/75806093/124191265-d7dd1400-dac3-11eb-8b2a-10ff8f73d4cc.png)

## <a id="stack"></a>Stack
### Brief Description
A stack is a linear data structure in which all the insertion and deletion of data or you can say its values are done at one end only, rather than in the middle. Stacks can be implemented by using arrays of type linear.
Stack is a linear data structure which follows a particular order in which the operations are performed. The order may be LIFO (Last In First Out) or FILO (First In Last Out).
Stack can either be a fixed size one or it may have a sense of dynamic resizing. 

### Basic Operations
- Push: Insert an element on to the top of the stack.
- Pop: Delete the topmost element and return it.
- Peek: Return the top element of the stack without deleting it.
- isEmpty: Check if the stack is empty.
- isFull: Check if the stack is full.

### Pros

### Cons

![image](https://user-images.githubusercontent.com/75806093/124191450-1541a180-dac4-11eb-9ae5-742c9a022ddd.png)

## <a id="queue"></a>Queue
Unlike stacks, a queue is open at both its ends. One end is always used to insert data (enqueue) and the other is used to remove data (dequeue). Queue follows First-In-First-Out methodology, i.e., the data item stored first will be accessed first.
The difference between stacks and queues is in removing. In a stack we remove the item the most recently added; in a queue, we remove the item the least recently added.

### Basic Operations
- Enqueue: Adds an item to the queue. If the queue is full, then it is said to be an Overflow condition. 
- Dequeue: Removes an item from the queue. The items are popped in the same order in which they are pushed. If the queue is empty, then it is said to be an Underflow condition. 
- Front: Get the front item from queue. 
- Rear: Get the last item from queue. 

### Pros

### Cons

![image](https://user-images.githubusercontent.com/75806093/124191473-1d99dc80-dac4-11eb-9d09-85550470c75b.png)

## <a id="hash-table"></a>Hash Table
### Brief Description
A Hash Table is a data structure that stores values which have keys associated with each of them. Furthermore, it supports lookup efficiently if we know the key associated with the value. Hence it is very efficient in inserting and searching, irrespective of the size of the data.

Hashing is a technique to convert a range of key values into a range of indexes of an array.
Hashing is a technique or process of mapping keys, values into the hash table by using a hash function. It is done for faster access to elements. The efficiency of mapping depends on the efficiency of the hash function used.

    - Efficiently computable.
    - Should uniformly distribute the keys (Each table position equally likely for each key)

Hash collisions are when a hash function returns the same output for two distinct inputs.
All hash functions have this problem.
This is often accommodated for by having the hash tables be very large.
        
### Basic Operations
- Search − Searches an element in a hash table.
- Insert − inserts an element in a hash table.
- Delete − Deletes an element from a hash table.

### Pros
- Designed to optimize searching, insertion, and deletion.
- Hashes are important for associative arrays and database indexing.
### Cons

![image](https://user-images.githubusercontent.com/75806093/124191498-24285400-dac4-11eb-9167-caeff5d439ab.png)

## <a id="tree"></a>Tree
### Brief Description
A tree is a hierarchical structure where data is organized hierarchically and are linked together. This structure is different from a linked list whereas, in a linked list, items are linked in a linear order.

Various types of trees have been developed throughout the past decades, in order to suit certain applications and meet certain constraints. Some examples are binary search tree, red-black tree.

Tree represents the nodes connected by edges. 

    - Path | Path refers to the sequence of nodes along the edges of a tree.
    - Root | The node at the top of the tree is called root. There is only one root per tree and one path from the root node to any node.
    - Parent | Any node except the root node has one edge upward to a node called parent.
    - Child | The node below a given node connected by its edge downward is called its child node.
    - Leaf | The node which does not have any child node is called the leaf node.
    - Subtree | Subtree represents the descendants of a node.
    - Visiting | Visiting refers to checking the value of a node when control is on the node.
    - Traversing | Traversing means passing through nodes in a specific order.
    - Levels | Level of a node represents the generation of a node. If the root node is at level 0, then its next child node is at level 1, its grandchild is at level 2, and so on.
    - Keys | Key represents a value of a node based on which a search operation is to be carried out for a node.

### Basic Operations
- Search − Searches an element in a tree.
- Insert − Inserts an element in a tree.
- Pre-order Traversal − Traverses a tree in a pre-order manner.
- In-order Traversal − Traverses a tree in an in-order manner.
- Post-order Traversal − Traverses a tree in a post-order manner.

### Pros

### Cons

![image](https://user-images.githubusercontent.com/75806093/124191525-2db1bc00-dac4-11eb-8638-413810ad93b3.png)

## <a id="binary-tree"></a>Binary Tree
### Brief Description
A binary tree is a special type of tree in which every node or vertex has either no child node or one child node or two child nodes. A binary tree is an important class of a tree data structure in which a node can have at most two children.

Child node in a binary tree on the left is termed as 'left child node' and node in the right is termed as the 'right child node.'

Types of Binary Trees
- Full binary tree: also called as proper binary tree or 2-tree is a tree in which all the node other than the leaves has exact two children.
- Complete binary tree: is a binary tree in which at every level, except possibly the last, has to be filled and all nodes are as far left as possible.
- Perfect binary tree: all the internal nodes have two children and all leaf nodes are at the same level.
- Balanced binary tree: the height of the tree is O(Log n) where n is the number of nodes.
- Degenerate tree (or Pathological): every internal node has one child. Such trees are performance-wise same as linked list.

## Binary Search Tree
### Brief Description
A data structure whose internal nodes each store a key greater than all the keys in the node's left subtree and less than those in its right subtree.
A binary tree is a type of data structure for storing data such as numbers in an organized way. Binary search trees allow binary search for fast lookup, addition and removal of data items, and can be used to implement dynamic sets and lookup tables. The order of nodes in a BST means that each comparison skips about half of the remaining tree, so the whole lookup takes time proportional to the binary logarithm of the number of items stored in the tree.

Binary Search Tree is a node-based binary tree data structure which has the following properties:

    - The left subtree of a node contains only nodes with keys lesser than the node’s key.
    - The right subtree of a node contains only nodes with keys greater than the node’s key.
    - The left and right subtree each must also be a binary search tree.

The above properties of Binary Search Tree provides an ordering among keys so that the operations like search, minimum and maximum can be done fast. If there is no ordering, then we may have to compare every key to search for a given key.

### Basic Operations
- Create: creates an empty tree.
- Insert: insert a node in the tree.
- Search: Searches for a node in the tree.
- Delete: deletes a node from the tree.
- Inorder: in-order traversal of the tree.
- Preorder: pre-order traversal of the tree.
- Postorder: post-order traversal of the tree.

### Pros

### Cons

![image](https://user-images.githubusercontent.com/75806093/124255055-07266c00-db2a-11eb-96a4-56ae5da7268d.png)

## <a id="red-black-tree"></a>Red-Black Tree
### Brief Description
A red-black tree is a kind of self-balancing binary search tree where each node has an extra bit, and that bit is often interpreted as the colour (red or black). These colours are used to ensure that the tree remains balanced during insertions and deletions. Although the balance of the tree is not perfect, it is good enough to reduce the searching time and maintain it around O(log n) time, where n is the total number of elements in the tree.
It must be noted that as each node requires only 1 bit of space to store the colour information, these types of trees show identical memory footprint to the classic (uncoloured) binary search tree. 

### Basic Operation
- Rotation - In rotation operation, the positions of the nodes of a subtree are interchanged.
Rotation operation is used for maintaining the properties of a red-black tree when they are violated by other operations such as insertion and deletion.
  - Left-rotate
  - Right-rotate
- Insertion - While inserting a new node, the new node is always inserted as a RED node. After insertion of a new node, if the tree is violating the properties of the red-black tree then, we do the following operations.
  - Recolor
  - Rotation
- Deletion - This operation removes a node from the tree. After deleting a node, the red-black property is maintained again.
### Pros

### Cons

![image](https://user-images.githubusercontent.com/75806093/124255454-7734f200-db2a-11eb-8b4c-5263e4dfa976.png)

# <a id="algorithms"></a>Algorithms
![image](https://user-images.githubusercontent.com/75806093/124192053-f8599e00-dac4-11eb-9d1d-02824fff9b8b.png)

Algorithm is a step-by-step procedure, which defines a set of instructions to be executed in a certain order to get the desired output. Algorithms are generally created independent of underlying languages, i.e. an algorithm can be implemented in more than one programming language.

From the data structure point of view, following are some important categories of algorithms:
-	Search − Algorithm to search an item in a data structure.
-	Sort − Algorithm to sort items in a certain order.
-	Insert − Algorithm to insert item in a data structure.
-	Update − Algorithm to update an existing item in a data structure.
-	Delete − Algorithm to delete an existing item from a data structure.

**Characteristics of an Algorithm**

Not all procedures can be called an algorithm. An algorithm should have the following characteristics:
-	Unambiguous
-	Input
-	Output
-	Finiteness
-	Feasibility
-	Independent

      - Unambiguous − Algorithm should be clear and unambiguous. Each of its steps (or phases), and their inputs/outputs should be clear and must lead to only one meaning.
      - Input − An algorithm should have 0 or more well-defined inputs.
      - Output − An algorithm should have 1 or more well-defined outputs, and should match the desired output.
      - Finiteness − Algorithms must terminate after a finite number of steps.
      - Feasibility − Should be feasible with the available resources.
      - Independent − An algorithm should have step-by-step directions, which should be independent of any programming code.

**Algorithm** Analysis

Efficiency of an algorithm can be analysed at two different stages, before implementation and after implementation. They are the following:

    - A Priori Analysis − This is a theoretical analysis of an algorithm. Efficiency of an algorithm is measured by assuming that all other factors, for example, processor speed, are constant and have no effect on the implementation.
    - A Posterior Analysis − This is an empirical analysis of an algorithm. The selected algorithm is implemented using programming language. This is then executed on target computer machine. In this analysis, actual statistics like running time and space required, are collected.

**Algorithm Complexity**

Suppose X is an algorithm and n is the size of input data, the time and space used by the algorithm X are the two main factors, which decide the efficiency of X.

- Time Factor − Time is measured by counting the number of key operations such as comparisons in the sorting algorithm.
- Space Factor − Space is measured by counting the maximum memory space required by the algorithm.

The complexity of an algorithm f(n) gives the running time and/or the storage space required by the algorithm in terms of n as the size of input data.

**Space Complexity**

Space complexity of an algorithm represents the amount of memory space required by the algorithm in its life cycle. The space required by an algorithm is equal to the sum of the following two components −
    
    A fixed part that is a space required to store certain data and variables, that are independent of the size of the problem. For example, simple variables and constants used, program size, etc.
    A variable part is a space required by variables, whose size depends on the size of the problem. For example, dynamic memory allocation, recursion stack space, etc.
    
Space complexity S(P) of any algorithm P is S(P) = C + SP(I), where C is the fixed part and S(I) is the variable part of the algorithm, which depends on instance characteristic I.

**Time Complexity**

Time complexity of an algorithm represents the amount of time required by the algorithm to run to completion. Time requirements can be defined as a numerical function T(n), where T(n) can be measured as the number of steps, provided each step consumes constant time.

**Asymptotic analysis**

Asymptotic analysis of an algorithm refers to defining the mathematical boundation/framing of its run-time performance. Using asymptotic analysis, we can very well conclude the best case, average case, and worst case scenario of an algorithm.

Asymptotic analysis is input bound i.e., if there's no input to the algorithm, it is concluded to work in a constant time. Other than the "input" all other factors are considered constant.

Asymptotic analysis refers to computing the running time of any operation in mathematical units of computation. For example, the running time of one operation is computed as f(n) and may be for another operation it is computed as g(n2). This means the first operation running time will increase linearly with the increase in n and the running time of the second operation will increase exponentially when n increases. Similarly, the running time of both operations will be nearly the same if n is significantly small.

Usually, the time required by an algorithm falls under three types:
-	Best Case − Minimum time required for program execution.
-	Average Case − Average time required for program execution.
-	Worst Case − Maximum time required for program execution.

**Asymptotic Notations**
Following are the commonly used asymptotic notations to calculate the running time complexity of an algorithm:
-	Ο Notation
-	Ω Notation
-	θ Notation

**Big O Notation, Ο**
The notation Ο(n) is the formal way to express the upper bound of an algorithm's running time. It measures the worst case time complexity or the longest amount of time an algorithm can possibly take to complete.

![image](https://user-images.githubusercontent.com/75806093/126081957-5c186dfb-445a-4e68-8f6a-a731c0fd7f69.png)

![image](https://user-images.githubusercontent.com/75806093/126081963-d719a21c-671c-469e-b1a9-738acc9c342b.png)

**Divide and Conquer**
In divide and conquer approach, the problem in hand, is divided into smaller sub-problems and then each problem is solved independently. ù
When we keep on dividing the subproblems into even smaller sub-problems, we may eventually reach a stage where no more division is possible. Those "atomic" smallest possible sub-problem (fractions) are solved.
The solution of all sub-problems is finally merged in order to obtain the solution of an original problem

![image](https://user-images.githubusercontent.com/75806093/126081888-50506662-d2d2-4809-9def-b683079a064a.png)

Broadly, we can understand divide-and-conquer approach in a three-step process.

- Divide/Break

This step involves breaking the problem into smaller sub-problems. Sub-problems should represent a part of the original problem. This step generally takes a recursive approach to divide the problem until no sub-problem is further divisible. At this stage, sub-problems become atomic in nature but still represent some part of the actual problem.

- Conquer/Solve

This step receives a lot of smaller sub-problems to be solved. Generally, at this level, the problems are considered 'solved' on their own.

- Merge/Combine

When the smaller sub-problems are solved, this stage recursively combines them until they formulate a solution of the original problem. This algorithmic approach works recursively and conquer & merge steps works so close that they appear as one.

**Dynamic Programming**

Dynamic programming approach is similar to divide and conquer in breaking down the problem into smaller and yet smaller possible sub-problems. But unlike, divide and conquer, these sub-problems are not solved independently. Rather, results of these smaller sub-problems are remembered and used for similar or overlapping sub-problems.

Dynamic programming is used where we have problems, which can be divided into similar sub-problems, so that their results can be re-used. Mostly, these algorithms are used for optimization. Before solving the in-hand sub-problem, dynamic algorithm will try to examine the results of the previously solved sub-problems. The solutions of sub-problems are combined in order to achieve the best solution.

So, we can say that:
-	The problem should be able to be divided into smaller overlapping sub-problem.
-	An optimum solution can be achieved by using an optimum solution of smaller sub-problems.
-	Dynamic algorithms use Memorization.
	
_Comparison_

In contrast to greedy algorithms, where local optimization is addressed, dynamic algorithms are motivated for an overall optimization of the problem.
In contrast to divide and conquer algorithms, where solutions are combined to achieve an overall solution, dynamic algorithms use the output of a smaller sub-problem and then try to optimize a bigger sub-problem. Dynamic algorithms use Memoization to remember the output of already solved sub-problems.

![image](https://user-images.githubusercontent.com/75806093/126081937-64f18c50-4b3a-4370-a233-535b6e3d1b80.png)

![image](https://user-images.githubusercontent.com/75806093/126081942-1d1f9f8d-ac60-456c-b26d-a5a9fd3ef4fe.png)

![image](https://user-images.githubusercontent.com/75806093/126082018-6753201b-e9b2-494f-bebd-2d69815f5791.png)

## <a id="searching-and-sorting"></a>Searching and Sorting

## <a id="searching"></a>Searching

Searching Algorithms are designed to check for an element or retrieve an element from any data structure where it is stored. Based on the type of search operation, these algorithms are generally classified into two categories:

- Sequential Search: In this, the list or array is traversed sequentially and every element is checked. For example: Linear Search.
- Interval Search: These algorithms are specifically designed for searching in sorted data-structures. These type of searching algorithms are much more efficient than Linear Search as they repeatedly target the center of the search structure and divide the search space in half. For Example: Binary Search.
    
## <a id="linear-search"></a>Linear Search

Linear search is a very simple search algorithm. In this type of search, a sequential search is made over all items one by one. Every item is checked and if a match is found then that particular item is returned, otherwise the search continues till the end of the data collection.

A simple approach is to do a linear search: 

-	Start from the leftmost element of arr[] and one by one compare x with each element of arr[]
-	If x matches with an element, return the index.
-	If x doesn’t match with any of elements, return -1

![image](https://user-images.githubusercontent.com/75806093/126082047-49907aaf-780b-442d-b633-67d99d964e88.png)

## <a id="binary-search"></a>Binary Search

Binary search is a fast search algorithm with run-time complexity of Ο(log n). This search algorithm works on the principle of divide and conquer. For this algorithm to work properly, the data collection should be in the sorted form.

Binary search looks for a particular item by comparing the middle most item of the collection. If a match occurs, then the index of item is returned. If the middle item is greater than the item, then the item is searched in the sub-array to the left of the middle item. Otherwise, the item is searched for in the sub-array to the right of the middle item. This process continues on the sub-array as well until the size of the subarray reduces to zero.

1.	Compare x with the middle element.
2.	If x matches with the middle element, we return the mid index.
3.	Else If x is greater than the mid element, then x can only lie in the right half subarray after the mid element. So we recur for the right half.
4.	Else (x is smaller) recur for the left half.

![image](https://user-images.githubusercontent.com/75806093/126082058-f86a818e-c858-462f-bd9b-b32adc1486a9.png)

## <a id="jump-search"></a>Jump Search

Like Binary Search, Jump Search is a searching algorithm for sorted arrays. The basic idea is to check fewer elements (than linear search) by jumping ahead by fixed steps or skipping some elements in place of searching all elements.

## <a id="interpolation-search"></a>Interpolation Search

Interpolation search is an improved variant of binary search. This search algorithm works on the probing position of the required value. For this algorithm to work properly, the data collection should be in a sorted form and equally distributed.

Binary search has a huge advantage of time complexity over linear search. Linear search has worst-case complexity of Ο(n) whereas binary search has Ο(log n).

Binary Search always goes to the middle element to check. On the other hand, interpolation search may go to different locations according to the value of the key being searched. For example, if the value of the key is closer to the last element, interpolation search is likely to start search toward the end side.

Step1: In a loop, calculate the value of “pos” using the probe position formula. 
Step2: If it is a match, return the index of the item, and exit. 
Step3: If the item is less than arr[pos], calculate the probe position of the left sub-array. Otherwise calculate the same in the right sub-array. 
Step4: Repeat until a match is found or the sub-array reduces to zero.

## <a id="sorting"></a>Sorting

A sorting algorithm is an algorithm made up of a series of instructions that takes an array as input, performs specified operations on the array, sometimes called a list, and outputs a sorted array.

A sorting algorithm takes an array as input and outputs a permutation of that array that is sorted.

There are two broad types of sorting algorithms: integer sorts and comparison sorts.

Comparison sorts compare elements at each step of the algorithm to determine if one element should be to the left or right of another element.

Comparison sorts are usually more straightforward to implement than integer sorts, but comparison sorts are limited by a lower bound of O(n log n), meaning that, on average, comparison sorts cannot be faster than O(n log n).

Integer sorts are sometimes called counting sorts (though there is a specific integer sort algorithm called counting sort). Integer sorts do not make comparisons, so they are not bounded by Ω(n log n). Integer sorts determine for each element x how many elements are less than x.

**In-place Sorting and Not-in-place Sorting**

Sorting algorithms may require some extra space for comparison and temporary storage of few data elements. These algorithms do not require any extra space and sorting is said to happen in-place, or for example, within the array itself. This is called in-place sorting. Bubble sort is an example of in-place sorting.

However, in some sorting algorithms, the program requires space which is more than or equal to the elements being sorted. Sorting which uses equal or more space is called not-in-place sorting. Merge-sort is an example of not-in-place sorting.

**Stable and Not Stable Sorting**

_Stable Sorting_

If a sorting algorithm, after sorting the contents, does not change the sequence of similar content in which they appear, it is called stable sorting. 

![image](https://user-images.githubusercontent.com/75806093/126082526-6e6f60f7-2e47-4227-a4b8-cf72b7aa0893.png)

_Unstable Sorting_

If a sorting algorithm, after sorting the contents, changes the sequence of similar content in which they appear, it is called unstable sorting.

![image](https://user-images.githubusercontent.com/75806093/126082533-59738fcb-ee52-40a7-b395-1040ffd81891.png)

Stability of an algorithm matters when we wish to maintain the sequence of original elements, like in a tuple for example.

**Adaptive and Non-Adaptive Sorting Algorithm**

A sorting algorithm is said to be adaptive, if it takes advantage of already 'sorted' elements in the list that is to be sorted. That is, while sorting if the source list has some element already sorted, adaptive algorithms will take this into account and will try not to re-order them.

A non-adaptive algorithm is one which does not take into account the elements which are already sorted. They try to force every single element to be re-ordered to confirm their sortedness.

**Important Terms**

- Increasing Order

A sequence of values is said to be in increasing order, if the successive element is greater than the previous one. For example, 1, 3, 4, 6, 8, 9 are in increasing order, as every next element is greater than the previous element.

- Decreasing Order

A sequence of values is said to be in decreasing order, if the successive element is less than the current one. For example, 9, 8, 6, 4, 3, 1 are in decreasing order, as every next element is less than the previous element.

- Non-Increasing Order

A sequence of values is said to be in non-increasing order, if the successive element is less than or equal to its previous element in the sequence. This order occurs when the sequence contains duplicate values. For example, 9, 8, 6, 3, 3, 1 are in non-increasing order, as every next element is less than or equal to (in case of 3) but not greater than any previous element.

- Non-Decreasing Order

A sequence of values is said to be in non-decreasing order, if the successive element is greater than or equal to its previous element in the sequence. This order occurs when the sequence contains duplicate values. For example, 1, 3, 3, 6, 8, 9 are in non-decreasing order, as every next element is greater than or equal to (in case of 3) but not less than the previous one.

## <a id="selection-sort"></a>Selection Sort

Selection sort is a simple sorting algorithm. This sorting algorithm is an in-place comparison-based algorithm in which the list is divided into two parts, the sorted part at the left end and the unsorted part at the right end. Initially, the sorted part is empty and the unsorted part is the entire list.

The smallest element is selected from the unsorted array and swapped with the leftmost element, and that element becomes a part of the sorted array. This process continues moving unsorted array boundary by one element to the right.

This algorithm is not suitable for large data sets as its average and worst case complexities are of Ο(n2), where n is the number of items.

The selection sort algorithm sorts an array by repeatedly finding the minimum element (considering ascending order) from unsorted part and putting it at the beginning. The algorithm maintains two subarrays in a given array.

1. The subarray which is already sorted. 
2. Remaining subarray which is unsorted.

In every iteration of selection sort, the minimum element (considering ascending order) from the unsorted subarray is picked and moved to the sorted subarray.

![image](https://user-images.githubusercontent.com/75806093/126082594-3f93151f-080c-45b3-9aaf-526e2bd53116.png)

## <a id="bubble-sort"></a>Bubble Sort

Bubble sort is a simple sorting algorithm. This sorting algorithm is comparison-based algorithm in which each pair of adjacent elements is compared and the elements are swapped if they are not in order. This algorithm is not suitable for large data sets as its average and worst case complexity are of Ο(n^2) where n is the number of items.

Bubble Sort is the simplest sorting algorithm that works by repeatedly swapping the adjacent elements if they are in wrong order.

![image](https://user-images.githubusercontent.com/75806093/126082602-640cd7ea-c5a2-41d5-9471-37c41535d13c.png)

## <a id="insertion-sort"></a>Insertion Sort

This is an in-place comparison-based sorting algorithm. Here, a sub-list is maintained which is always sorted. For example, the lower part of an array is maintained to be sorted. An element which is to be 'insert'ed in this sorted sub-list, has to find its appropriate place and then it has to be inserted there. Hence the name, insertion sort.

The array is searched sequentially and unsorted items are moved and inserted into the sorted sub-list (in the same array). This algorithm is not suitable for large data sets as its average and worst case complexity are of Ο(n2), where n is the number of items.

Insertion sort is a simple sorting algorithm that works similar to the way you sort playing cards in your hands. The array is virtually split into a sorted and an unsorted part. Values from the unsorted part are picked and placed at the correct position in the sorted part.

To sort an array of size n in ascending order: 
1. Iterate from arr[1] to arr[n] over the array. 
2. Compare the current element (key) to its predecessor. 
3. If the key element is smaller than its predecessor, compare it to the elements before. Move the greater elements one position up to make space for the swapped element.

![image](https://user-images.githubusercontent.com/75806093/126082612-a39f3649-9b05-4242-af65-1774081863f7.png)

## <a id="merge-sort"></a>Merge Sort

Merge sort is a sorting technique based on divide and conquer technique. With worst-case time complexity being Ο(n log n), it is one of the most respected algorithms.

Merge sort first divides the array into equal halves and then combines them in a sorted manner.

![image](https://user-images.githubusercontent.com/75806093/126082618-de49a737-c860-4fa2-bafc-fcb0727275b4.png)

## <a id="heap-sort"></a>Heap Sort

Heap sort is a comparison-based sorting technique based on Binary Heap data structure. It is similar to selection sort where we first find the minimum element and place the minimum element at the beginning. We repeat the same process for the remaining elements.

A Binary Heap is a Complete Binary Tree where items are stored in a special order such that the value in a parent node is greater (or smaller) than the values in its two children nodes. The former is called max heap and the latter is called min-heap. The heap can be represented by a binary tree or array.

Heap Sort Algorithm for sorting in increasing order: 
1. Build a max heap from the input data. 
2. At this point, the largest item is stored at the root of the heap. Replace it with the last item of the heap followed by reducing the size of heap by 1. Finally, heapify the root of the tree. 
3. Repeat step 2 while the size of the heap is greater than 1.

![image](https://user-images.githubusercontent.com/75806093/126082628-70515269-4607-4e34-a67f-b5aa1c3a2ee4.png)

## <a id="quicksort"></a>Quicksort

QuickSort is a Divide and Conquer algorithm. It picks an element as pivot and partitions the given array around the picked pivot. There are many different versions of quickSort that pick pivot in different ways. 

    Always pick first element as pivot.
    Always pick last element as pivot (implemented below)
    Pick a random element as pivot.
    Pick median as pivot.
    
The key process in quickSort is partition(). Target of partitions is, given an array and an element x of array as pivot, put x at its correct position in sorted array and put all smaller elements (smaller than x) before x, and put all greater elements (greater than x) after x. All this should be done in linear time.


## <a id="other-sort"></a>Other Sort

**Radix Sort**

The idea of Radix Sort is to do digit by digit sort starting from least significant digit to most significant digit. Radix sort uses counting sort as a subroutine to sort.

The Radix Sort Algorithm 
-Do following for each digit i where i varies from least significant digit to the most significant digit.
Sort input array using counting sort (or any stable sort) according to the i’th digit.

**Counting Sort**

Counting sort is a sorting technique based on keys between a specific range. It works by counting the number of objects having distinct key values (kind of hashing). Then doing some arithmetic to calculate the position of each object in the output sequence.

**Bucket Sort**

Bucket sort is mainly useful when input is uniformly distributed over a range.

![image](https://user-images.githubusercontent.com/75806093/126082663-4ae92380-62ba-49c6-ada0-c0a073581e69.png)

**Sorting Algorithms – Brief description**

- _Selection Sort_

The selection sort algorithm sorts an array by repeatedly finding the minimum element (considering ascending order) from unsorted part and putting it at the beginning.

- _Bubble Sort_

Bubble sort is a comparison-based algorithm that compares each pair of elements in an array and swaps them if they are out of order until the entire array is sorted. For each element in the list, the algorithm compares every pair of elements.

- _Insertion Sort_

Insertion sort is a comparison-based algorithm that builds a final sorted array one element at a time. It iterates through an input array and removes one element per iteration, finds the place the element belongs in the array, and then places it there.

- _Merge Sort_

Merge sort is a comparison-based algorithm that focuses on how to merge together two pre-sorted arrays such that the resulting array is also sorted.

- _Heapsort_

Heapsort is a comparison-based algorithm that uses a binary heap data structure to sort elements. It divides its input into a sorted and an unsorted region, and it iteratively shrinks the unsorted region by extracting the largest element and moving that to the sorted region.

- _Quicksort_

Quicksort is a comparison-based algorithm that uses divide-and-conquer to sort an array. The algorithm picks a pivot element, A[q], and then rearranges the array into two subarrays A[p…q−1], such that all elements are less than A[q], and A[q+1…r], such that all elements are greater than or equal to A[q].

- _Radix Sort_

The idea of Radix Sort is to do digit by digit sort starting from least significant digit to most significant digit.

- _Counting Sort_

Counting sort is an integer sorting algorithm that assumes that each of the n input elements in a list has a key value ranging from 000 to k, for some integer k. For each element in the list, counting sort determines the number of elements that are less than it. Counting sort can use this information to place the element directly into the correct slot of the output array.


## <a id="graph-algorithms"></a>Graph Algorithms

![image](https://user-images.githubusercontent.com/75806093/126082726-c200b02c-c6c7-4b54-ab13-4b089cd30ad7.png)

A graph is a binary relation. It provides a powerful visualization as a set of points (called nodes) connected by lines (called edges) or arrows (called arcs). In this regard, the graph is a generalization of the tree data model. Like trees, graphs come in several forms: directed, undirected and labeled.

- **Undirected graph**: An undirected graph is one in which its edges have no orientations, i.e. no direction is associated with any edge. The edges (x,y) and (y,x) are equivalent.
- **Directed graph**: A directed graph or digraph G consists of a set V of vertices (or nodes) and a set of edges (or arcs) such that each edge e ∈ E is associated with an ordered pair of vertices. If there is an edge (x,y), it is completely distinct from the edge (y,x)

A graph is a data structure that consists of the following two components:

1. A finite set of vertices also called as nodes. 
2. A finite set of ordered pair of the form (u, v) called as edge. The pair is ordered because (u, v) is not the same as (v, u) in case of a directed graph(di-graph). The pair of the form (u, v) indicates that there is an edge from vertex u to vertex v. The edges may contain weight/value/cost.

Graphs are used to represent many real-life applications: Graphs are used to represent networks. The networks may include paths in a city or telephone network or circuit network. Graphs are also used in social networks like LinkedIn, Facebook. For example, in Facebook, each person is represented with a vertex (or node). Each node is a structure and contains information like person id, name, gender, and locale.
 
Most commonly used representations of a graph:

1. Adjacency Matrix 	
2. Adjacency List 

There are other representations also like, Incidence Matrix and Incidence List. The choice of graph representation is situation-specific. It totally depends on the type of operations to be performed and ease of use.

![image](https://user-images.githubusercontent.com/75806093/124192636-e0cee500-dac5-11eb-8b54-cb06e1b80806.png)

## <a id="depth-first-search"></a>Depth-First Search

Depth-ﬁrst search explores edges out of the most recently discovered vertex s that still has unexplored edges leaving it. Once all of ’s edges have been explored, the search “backtracks” to explore edges leaving the vertex from which was discovered. This process continues until we have discovered all the vertices that are reachable from the original source vertex. If any undiscovered vertices remain, then depth-ﬁrst search selects one of them as a new source, and it repeats the search from that source.

The algorithm repeats this entire process until it has discovered every vertex:

    Visit a vertex s.
    Mark s as visited.
    Recursively visit each unvisited vertex attached to s.

## <a id="breadth-first-search"></a>Breadth-First Search

In a breadth-first search, we start with the start node, followed by its adjacent nodes, then all nodes that can be reached by a path from the start node containing two edges, three edges, and so on. Formally the BFS algorithm visits all vertices in a graph G, that are k edges away from the source vertex s before visiting any vertex k+1 edges away. This is done until no more vertices are reachable from s. The image below demonstrates exactly how this traversal proceeds

For a graph G=(V,E) and a source vertex v, breadth-first search traverses the edges of G to find all reachable vertices from v. It also computes the shortest distance to any reachable vertex. Any path between two points in a breadth-first search tree corresponds to the shortest path from the root v to any other node s.

## <a id="topological-sorting"></a>Topological Sorting

Topological sorting for Directed Acyclic Graph (DAG) is a linear ordering of vertices such that for every directed edge u v, vertex u comes before v in the ordering. Topological Sorting for a graph is not possible if the graph is not a DAG.

![image](https://user-images.githubusercontent.com/75806093/126082845-4af8f369-dffb-4c5c-9178-4efc837ab0cc.png)

## <a id="minimal-spanning-tree"></a>Minimal Spanning Tree

A spanning tree for an undirected graph G is the nodes of G together with a subset of the edges of G that:

    connect the nodes, that is, there is a path between any two nodes using only edges in the spanning tree;
    form an unrooted, unordered tree, that is, there are no (simple) cycles.
