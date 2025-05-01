- This question is a part of [[Introduction - Arrays and Strings]]

```python
class Solution(object):
	def rotateString(self, s, goal):
		"""
		:type s: str
		:type goal: str
		:rtype: bool
		"""
		n = len(s)
		s = list(s)
		
		for _ in range(n):
			popped = s.pop(0)
			s.append(popped)
		
			if ''.join(s) == goal:
				return True

		return False
```

- Convert s into a list then pop the first value and add it to the end. Combine the list and check if equals the goal.

