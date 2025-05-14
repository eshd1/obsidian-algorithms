- This question is a part of [[Introduction - Arrays and Strings]]

```python
class Solution(object):
	def diagonalSum(self, mat):
		"""
		:type mat: List[List[int]]
		:rtype: int
		"""
		diag1 = [mat[i][i] for i in range(len(mat))]
		diag2 = [mat[i][len(mat)-1-i] for i in range(len(mat))]
		
		if len(mat) % 2 == 1:
			return sum(diag1) + sum(diag2) - diag1[len(mat)//2]
		
		else:
			return sum(diag1) + sum(diag2)
```

- This question you go through both diagonals, but if the length of the matrix is odd, you need to remove the middle element from being counted twice. Otherwise return the sum of both the diagonals added together. 



