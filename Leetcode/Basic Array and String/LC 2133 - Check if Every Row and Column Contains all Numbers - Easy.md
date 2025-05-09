- This question is part of [[Introduction - Arrays and Strings]]

```python
class Solution(object):
	def checkValid(self, matrix):
		"""
		:type matrix: List[List[int]]
		:rtype: bool
		"""
		n = len(matrix)
		cols = list(zip(*matrix))
		for row in matrix:
			if set(row) != set(range(1, n+1)):
				return False
		
		for col in cols:
			if set(col) != set(range(1, n+1)):
				return False
		
		return True
```

- Use sets to check if every value in the range is in the set of that row or column. If they arent equal return False. You can also do this in a much slower fashion going over each value in each row/col, but this is way easier. 