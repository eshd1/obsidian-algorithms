- This question is part of the [[Two Pointers]] family. 

```python
class Solution:
	def reverseWords(self, s: List[str]) -> None:
		"""
		Do not return anything, modify s in-place instead.
		"""
		def reverse(left, right):
			while left < right:
				s[left], s[right] = s[right], s[left]
				left += 1
				right -= 1

		n = len(s)
		reverse(0, n-1)
		start = 0
		
		for end in range(n+1):
			if end == n or s[end] == ' ':
				reverse(start, end - 1)
				start = end + 1
```

- This question is pretty tricky but can be solved using a easy two pointer approach. First create a function which takes in a left and right endpoint and reverse all values between those two endpoints. 
- Then set the length to len(s)
- Reverse the whole list. Then create a new start point at 0 and for end in range(n+1) we iterate through till we reach the end or a space. 
- If its the space reverse from the start, to end-1 to avoid reversing the space and then set start to the new end+1 to skip the space otherwise end. 