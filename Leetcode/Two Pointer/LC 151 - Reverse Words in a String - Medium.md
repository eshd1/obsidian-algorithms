- This question is part of the [[Two Pointers]] family and is very similar too [[LC 344 - Reverse String - Easy]]

```python
class Solution:
	def reverseWords(self, s: str) -> str:
		s = s.strip()
		s = s.split()
		
		left = 0
		right = len(s) - 1
	
		while left < right:
			s[left], s[right] = s[right], s[left]
			left += 1
			right -= 1
		
		return " ".join(s)
```

- We use .strip() to get rid of all trailing and leading white spaces and then .split() to split all of our words into a list. Then we use the two pointer approach to reverse the list and join it back together using .join()
