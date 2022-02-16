# Grokking Algorithms

## Table of Content
- [01 - Introduction to Algorithms](#introduction)
- [02 - Selection Sort](#selection-sort)
- [03 - Recursion](#recursion)
- [04 - Quicksort](#quicksort)
- [05 - Hash Tables](#hash-tables)
- [06 - Breadth-first Search](#breadth-first-search)


## <a id="introduction"></a>01 - Introduction to Algorithms

### Binary Search

```python
def binary_search(list, item):  # low and high keep track of which part of the list you'll search in
  low = 0
  high = len(list) - 1
  
  while low <= high:  # while you haven't narrowed it down to one element...
  mid = (low + high)  # ...check the middle element
  guess = list(mid)
  if guess == item:  # found the item
    return mid
  if guess > item:  # the guess was to high
    high = mid - 1 
  else:  # the guess was to low
    low = mid + 1
  return None  # the item doesn't exist
```

```python
# to test it
my_list = [1, 2, 3, 5, 7, 9, 10, 11, 15]

print binary search(my_list, 3) # => 1 #remember, lists start at 0; the second slot has index 1
print binary search(my_list, -1) # => None # None means nill in Python; it indicates that the item wasn't found
```

## <a id="selection-sort"></a>02 - Selection Sort

### Selection sort

```python
def findSmallest(arr):
  smallest = arr[0]
  smallest_index = 0
  for i in range(1, len(arr)):
    if arr[i] < smallest:
      smallest = arr[i]
      smallest_index = 1
  return smallest_index
```

```python
def selectionSort(arr):
  newArr = []
  for i in range(len(arr)):
      smallest = findSmallest(arr)
      newArr.append(arr.pop(smallest))
  return newArr
  
print selectionSort([5, 3, 6, 2, 10])
```

## <a id="recursion"></a>03 - Recursion

### Recursion

first approach:

```python
def look_for-key(main_box):
    pile = main_box.make_a_pile_to_look_through()
    while pile is not empty:
      box = pile.grab_a_box()
      for item in box:
        if item.is_a_box():
          pile.append(item)
        elif item.is_a_key():
          print "found the key!"
```

second approach:

```python
def look_for_box(box):
  for item in box:
    if item.is_a_box():
      look_for_key(item)
    elif item.is_a_key():
      print "found the key!"
```

## <a id="quicksort"></a>04 - Quicksort

### Quicksort

```python
def quicksort(array):
  if len(array) < 2:
    return array
  else:
    pivot = array[0]
    less = {i for i in array[1:] if i <= pivot}
    greater = {i for i in array[1:] if i > pivot}
    return quicksort(less) + (pivot) + quicksort(greater)
print quicksort([10, 5, 2, 3])
```

## <a id="hash-tables"></a>05 - Hash Tables

### Hash Tables / Dictionaries

```python
book = dict()
book["apple"] = 0.67
book["milk"] = 1.49
book["avocado"] = 1.49
print(book)
```

```python
voted = {}

def check_voter(name):
  if voted.get(name):
    print("kick them out!")
  else:
    voted[name] = True
    print("let them vote!")
```

```python
cache = {}

def get_page(url):
  if cache.get(url):
    return cache(url)
  else:
    data = get_data_from_server(url)
    cache(url) = data
    return data
```

## <a id="breadth-first-search"></a>06 - Breadth-first Search

### Breadth-first Search

```python
graph = {}
graph["you"] = ["alice", "bob", "claire"]
graph["bob"] = ["anuj", "peggy"]
graph["alice"] = ["peggy"]
graph["claire"] = ["thom", "jonny"]
graph["anuj"] = []
graph["peggy"] = []
graph["thom"] = []
graph["jonny"] = []
```

```python
from collections import deque
search_queue = deque()
search_queue += graph["you"]

while search_queue:
  person = search_queue.popleft()
  if person_is_seller(person):
    print person + " is a mango seller"
    return True
  else:
    search_queue += graph[person]
return False
```

```python
def search(name):
    search_queue = deque()
    search_queue += graph[name]
    searched = []
    while search_queue:
        person = search_queue.popleft()
        if not person in searched:
            if person_is_seller(person):
                print person + " is a mango seller!"
                return True
            else:
                search_queue += graph[person]
                searched.Append(person)
    return False

search["you"]
```
