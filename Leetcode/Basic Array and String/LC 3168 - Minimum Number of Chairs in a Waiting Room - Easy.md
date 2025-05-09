- This question is a part of [[Introduction - Arrays and Strings]]

```python
class Solution(object):
	def minimumChairs(self, s):
		"""
		:type s: str
		:rtype: int
		"""
		people = 0
		chairs = 0
		for c in s:
			if c == "E":
				people += 1
				if people > chairs:
					chairs += 1
			else:
				people -= 1
		
		return chairs
```

- This question is similar to simulation questions because we are simulating the scenarios. We first increment people += 1. Then we check if people is greater than chairs. If it is we increment chairs. 
- If c == “L” people -= 1


