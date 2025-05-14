- This question is part of [[Introduction - Arrays and Strings]]

```python
class Solution(object):
	def satisfiesConditions(self, grid):
		"""
		:type grid: List[List[int]]
		:rtype: bool
		"""
		for i in range(len(grid)-1):
			for j in range(len(grid[i])):
				if grid[i][j] != grid[i + 1][j]:
					return False
		
		for i in range(len(grid)):
			for j in range(len(grid[i])-1):
				if grid[i][j] == grid[i][j + 1]:
					return False
		
		return True
```

- Go through each row and column and make sure it all satisfies the conditions. You CANNOT run one loop cause you will either miss the last row or last column. 
