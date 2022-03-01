## Regular Expressions

A RegEx, or Regular Expression, is a sequence of characters that forms a search pattern.

RegEx can be used to check if a string contains the specified search pattern.

RegEx Module

Python has a built-in package called re, which can be used to work with Regular Expressions.

Import the re module:

```python
import re
```

### RegEx Functions

The re module offers a set of functions that allows us to search a string for a match:

| Function | Description |
| -------- | ----------- |
|findall | Returns a list containing all matches
|search | Returns a Match object if there is a match anywhere in the string
|split | Returns a list where the string has been split at each match
|sub | Replaces one or many matches with a string

### Metacharacters

Metacharacters are characters with a special meaning:

| Character | Description |
| --------- | ----------- |
| [] | A set of characters		
| \	| Signals a special sequence (can also be used to escape special characters)
| .	| Any character (except newline character)
| ^ |	Starts with	
| $	| Ends with	
| *	| Zero or more occurrences
| +	| One or more occurrences	
| ?	| Zero or one occurrences	
| {} | Exactly the specified number of occurrences	
| \|	| Either or
| () | Capture and group

### Special Sequences

A special sequence is a \ followed by one of the characters in the list below, and has a special meaning:

| Character | Description |
| --------- | ----------- |
| \A | Returns a match if the specified characters are at the beginning of the string
| \b | Returns a match where the specified characters are at the beginning or at the end of a word
| \B | Returns a match where the specified characters are present, but NOT at the beginning (or at the end) of a word	
| \d | Returns a match where the string contains digits (numbers from 0-9)
| \D | Returns a match where the string DOES NOT contain digits
| \s | Returns a match where the string contains a white space character
| \S | Returns a match where the string DOES NOT contain a white space character
| \w | Returns a match where the string contains any word characters (characters from a to Z, digits from 0-9, and the underscore _ character)
| \W | Returns a match where the string DOES NOT contain any word characters	
| \Z | Returns a match if the specified characters are at the end of the string

### Sets

A set is a set of characters inside a pair of square brackets [] with a special meaning:

| Set | Description |
| --- | ----------- |
| [arn]	| Returns a match where one of the specified characters (a, r, or n) are present	
| [a-n]	| Returns a match for any lower case character, alphabetically between a and n	
| [^arn] | Returns a match for any character EXCEPT a, r, and n	
| [0123] | Returns a match where any of the specified digits (0, 1, 2, or 3) are present	
| [0-9]	| Returns a match for any digit between 0 and 9	
| [0-5][0-9] | Returns a match for any two-digit numbers from 00 and 59	
| [a-zA-Z] | Returns a match for any character alphabetically between a and z, lower case OR upper case	
| [+] | In sets, +, *, ., |, (), $,{} has no special meaning, so [+] means: return a match for any + character in the string

- The findall() function returns a list containing all matches.
- The search() function searches the string for a match, and returns a Match object if there is a match.
- The split() function returns a list where the string has been split at each match.
- The sub() function replaces the matches with the text of your choice.
