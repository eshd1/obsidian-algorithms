- This question is part of [[Introduction - Arrays and Strings]]

```python
class Solution(object):
	def findChampion(self, grid):
		"""
		:type grid: List[List[int]]
		:rtype: int
		"""
		count = []
		for row in grid:
			count.append(row.count(1))

		max_idx = count.index(max(count))
		return max_idx
```

- This is the same as [[LC 2643 - Row with Maximum Ones - Easy]]
- Check description there, the desc for this question is atrocious 