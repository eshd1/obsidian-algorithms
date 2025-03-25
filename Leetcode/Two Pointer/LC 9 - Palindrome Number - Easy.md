- This Leetcode question has been solved before but revisiting to solve with the [[Two Pointers]] method. 

```python
class Solution:
	def isPalindrome(self, x: int) -> bool:
		str_num = str(x)
		left = 0
		right = len(str_num) - 1

		while left < right:
			if str_num[left] != str_num[right]:
				return False

			left += 1
			right -= 1
	return True
```

- Basically check if at any point while left is less then right if the characters don’t match. If they don’t then return false cause it can’t be a palindrome otherwise return True. Much simpler and easier way of writing the code. 
