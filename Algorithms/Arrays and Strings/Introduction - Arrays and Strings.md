- In terms of algorithms problems, **arrays (1D) and strings** are similar. 
	- They both represent an ordered group of elements
	- Most problems will include one of these as the input. 
	- In **Python and Java** strings are immutable whereas in C++ they are mutable. 
		- Example: you can’t do s[2] = “d” for strings 
	

| Operation          | Appending to End | Popping from end | Insertion, not from end | Deletion, not from end | Modifying an element | Random Access | Checking if element exists |
| ------------------ | ---------------- | ---------------- | ----------------------- | ---------------------- | -------------------- | ------------- | -------------------------- |
| Array/List         | O(1)             | O(1)             | O(n)                    | O(n)                   | O(1)                 | O(1)          | O(n)                       |
| String (immutable) | O(n)             | O(n)             | O(n)                    | O(n)                   | O(n)                 | O(1)          | O(n)                       |
