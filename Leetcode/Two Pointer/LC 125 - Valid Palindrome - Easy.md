- This Leetcode question has been solved before but revisiting to solve with the [[Two Pointers]] method. 
- This is the same concept as [[LC 9 - Palindrome Number - Easy]]

```python
class Solution:
	def isPalindrome(self, s: str) -> bool:
		empty = []
		for char in s:
			if char.isalnum() == True:
				empty.append(char.lower())
			else: pass

		left = 0
		right = len(empty) - 1

		while left < right:
			if empty[left] != empty[right]:
				return False
			left += 1
			right -= 1

	return True
```

- First create an empty string then append any alnum character and make sure to use .lower() on it. Once this is done create a left and right end point for the standard two pointer algorithm and apply the same logic. 