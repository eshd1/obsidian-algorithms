- This question is super simple and is a part of [[Introduction - Arrays and Strings]]

```python
class Solution(object):
	def transpose(self, matrix):
		"""
		:type matrix: List[List[int]]
		:rtype: List[List[int]]
		"""
		res = []
		for tup in list(zip(*matrix)):
			res.append(list(tup))
		
		return res
```

- This question is super easy with the zip function. We transpose the matrix and we get all the values in tuples. We convert those into lists and add to a new list. 