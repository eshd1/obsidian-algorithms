- This question is part of [[Introduction - Arrays and Strings]]

```python
class Solution(object):
	def modifiedMatrix(self, matrix):
		"""
		:type matrix: List[List[int]]
		:rtype: List[List[int]]
		"""
		cols = list(zip(*matrix))
		answer = []
		
		for col in cols:
			empty = []
			for v in col:
				if v == -1:
					empty.append(max(col))
				else:
					empty.append(v)
		
			answer.append(empty)
		
		res = [row for row in zip(*answer)]
		return res
```

- Transpose matrix, find any values that are = -1, if so change them with the maximum of that column. Untranspose the matrix and return the new matrix. 

