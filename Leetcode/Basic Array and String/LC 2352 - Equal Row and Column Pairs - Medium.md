- This question is a part of [[Introduction - Arrays and Strings]]

```python
class Solution(object):
	def equalPairs(self, grid):
		"""
		:type grid: List[List[int]]
		:rtype: int
		"""
		counter = 0
		cols = list(zip(*grid))

		for col in cols:
			for row in grid:
				if list(col) == row:
					counter +=1
	
		return counter
```

- This question is quite simple after using the zip function. this turns the rows into columns. If the columns are present in the grid as rows increment the counter by 1. 
