- **Two Pointers** is an extremely common technique used to solve array and string problems. 
	- It involves having two integer variables that both move along an iterable
- **Left and Right** which each represent an index of the array or string. 
- There are several ways to implement two pointers
	- Method 1: **Start the pointers at the edges of the input. Move them towards each other until they meet**
		- Start one pointer at the first index 0 and the other pointer at the last index **input.length-1**
		- Use a while loop until the pointers are equal to each other 
		- At each iteration of the loop move the pointers towards each other. This means either increment the pointer that started at the first index, decrement the pointer that started at the last index or both. 

```python 
function fn(arr):
    left = 0
    right = arr.length - 1

    while left < right:
        **logic**
            1. left++
            2. right--
            3. Both left++ and right--
```

- What makes this technique that we will never have more then O(n) iterations for the while loop because the pointers start n away from each other and move at least one step in every iteration. Therefore we can keep the work inside each iteration at O(1), this technique will result in a linear runtime. Which is usually best possible runtime. 

**Example - Check if Palindrome** 

```python 
class Solution: 
	def palindrome(s):
		left = 0
		right = len(s) - 1

		 while left < right:
			 if s[left] != s[right]: 
				 return False
			left+=1
			right-=1
			
		return True
	
```

**Example - Check for Target**
- Return True if there exists a pair of numbers that sum to target, false otherwise. Very similar to the **Two Sum** question. However, the array must be **sorted** for the approach to work in this manner. 

```python 
class Solution: 
	def check_target(nums, target): 
		left = 0
		right = len(nums) - 1

		while left < right:
			current = nums[left] + nums[right]
			if current == target: 
				return True
			if current < target: 
				left += 1
			if current > target: 
				right -= 1
		return False
```

- Like the previous example this algorithm also uses O(1) space and has a time complexity of O(n). 

**Another Way to use Two Pointers**
- This method is applicable when the problem has two iterables in the input, for example two arrays. 
	- **Move along both inputs simultaneously until all elements have been checked.**

**Pseudocode**

```python
function fn(arr1, arr2):
    i = j = 0
    while i < arr1.length AND j < arr2.length:
        Do some logic here depending on the problem
        Do some more logic here to decide on one of the following:
            1. i++
            2. j++
            3. Both i++ and j++

    // Step 4: make sure both iterables are exhausted
    // Note that only one of these loops would run
    while i < arr1.length:
        Do some logic here depending on the problem
        i++

    while j < arr2.length:
        Do some logic here depending on the problem
        j++
```

- This code will have a big O time of O(n+m). 

**Example 3**
Given two **sorted** integer arrays arr1 and arr2, return a new array that combines both of them and is also sorted. 

```python
class Solution: 
	def combine(arr1, arr2): 
		res = []
		i = j = 0
		while i < len(arr1) and j < arr2.length: 
			if arr1[i] < arr2[j]: 
				res.append(arr1[i])
				i+=1
			else: 
				res.append(arr2[j])
				j+=1

		while i < len(arr1): 
			res.append(arr1[i])
			i+=1
		while j < len(arr2): 
			res.append(arr2[j])
			j +=1
		return res 
			
```


**Leetcode Questions for Practice**
	- [[LC 9 - Palindrome Number - Easy]]
	- [[LC 125 - Valid Palindrome - Easy]]
	- [[LC 344 - Reverse String - Easy]]
	- [[LC 392 - Is Subsequence - Easy]]
	- [[LC 977  - Squares of a Sorted Array - Easy]]



