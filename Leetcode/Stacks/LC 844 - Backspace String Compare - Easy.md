- This question is part of the Stacks family. 

```python
class Solution(object):
	def backspaceCompare(self, s, t):
		"""
		:type s: str
		:type t: str
		:rtype: bool
		"""
		def check(string):
			stack = []
			for c in string:
				if c == "#":
					if stack:
						stack.pop()
				else:
					stack.append(c)
			return "".join(stack)

		return check(s) == check(t)
```

- Create a function that uses a stack to check the last character and pop or add to the stack according to that. Then returns a string of the stack combined together. Then simply call the function with both strings and compare.