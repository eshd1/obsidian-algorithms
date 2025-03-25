- Recursion is a problem solving method. In code, recursion is implemented using a function that calls itself
- The opposite of a recursive algorithm would be an iterative algorithm. 
	- There is a branch of study called **computability theory** that proves and iterative algorithm can be written recursively. 

```python
# iterative approach
for i in range(10): 
	print(i)

# recursive approach 
def function(i): 
	print(i)
	fn(i+1)
	return 
function(1)

```

- However this recursive function will loop infinitely. To fix this we can use a **base case**. 
- This will serve as a way to stop the function. 

```python 
def function(i): 
	# base case 
	if i > 10: 
		return 
	print(i)
	fn(i + 1)
	return 
	
function(1)
```

- Obviously for printing numbers looping/iterative route may be more easy however for problems like the Fibonacci sequence recursion shines 
- Fn = F(n-1) + F(n-2) - this is called **recurrence relation** - its and equation that connects the terms together. We work backwards in code refer (LC 1137 Tribonacci problem)


```python 
def fib(n): 
	if n <=1: 
		return n
	oneBack = fib(n-1)
	twoBack = fib(n-2)
	return oneBack + twoBack 
```
