- This question is part of [[Introduction - Arrays and Strings]]

```python
class Solution(object):
	def numberCount(self, a, b):
		"""
		:type a: int
		:type b: int
		:rtype: int
		"""
		
		counter = 0
		for i in range(a, b+1):
			if len(list(str(i))) == len(set(str(i))):
				counter += 1
		
		return counter
```

- Check if the length of the list is the same of the set of the number. Then increment the counter. 