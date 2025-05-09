- This question is a part of [[Introduction - Arrays and Strings]]

```python
class Solution(object):
	def deleteGreatestValue(self, grid):
		"""
		:type grid: List[List[int]]
		:rtype: int
		"""
		ans = 0
		while len(grid[0]) != 0:
			clear = []
			for sub in grid:
				clear.append(max(sub))
				sub.remove(max(sub))
			ans += max(clear)
		
		return ans
```

- This question is super simple we just keep going till the length of one of the rows is not zero, we append the max to a list and then add the max to a running total. Return the total at the end. 