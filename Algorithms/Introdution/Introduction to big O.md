- Algorithms should be **deterministic**. Given the same **input**, the algorithm should **always** produce the same **output**. 

###### Big O
- Big O is a notation used to describe the computational complexity of an algorithm. 
- The computational complexity of an algo is split into two parts: 
	- time complexity
	- space complexity

- **Time Complexity** of an algorithm is the amount of time the algo needs to run relative to the input size. 
- **Space Complexity** of an algo is the amount of memory allocated by the algorithm when run relative to the input size. 
###### How Complexity Works?
- The **arguments** are variables defined by the programmer, but they should represent values that change between different inputs, and these values should affect the algorithm.
	- The most common variable you will see is n. 

###### Calculating Complexity 
- **First Rule** - Ignore constants O(100n) = O(8n) = O(n)
- **Second Rule** - When considering complexity as the variables **tend to infinity**. When we have addition/subtraction between terms of the **same** variable, ignore all terms except the most powerful one. For example: 
	- O(n^2 - n) - n^2 term will become so large that the other two terms are effectively zero in comparison. 
- The best complexity possible O(1)
- There are three cases when discussing complexity 
	- **Best Case Scenario**
	- **Average Scenario**
	- **Worst Case Scenario**

###### Analyzing Time Complexity
- Each inner loop iteration is O(n) - since the loop must run n times. Which means each outer for loop iteration costs O(n)

```python
for i in range(len(arr1)): 
	for j in range(len(arr2)): 

# this will be O(n^2)
```

- Whereas lets say if we 3 loops the first two will be O(n) and the last one will go for O(m) - which means total complexity is O(n + m)

```python 
for i in range(len(arr1)):  # O(n)
	continue

for i in range(len(arr1)):  # O(n)
	continue

for i in range(len(arr2)): # O(m)
	continue
```

- **Logarithmic Time** - A logarithm is the inverse operation to exponents. The time complexity of O(log n) is **extremely fast** 
- O(log n) means that somewhere in the algo, the input is being reduced by a percentage at every step. 

###### Analyzing Space Complexity 
- When you initialize variables like arrays or strings, your algorithm is allocating memory. 

```python
for i in range(len(arr1)): 
	print(arr1[i])
```

- This algorithm has a space complexity of O(1)