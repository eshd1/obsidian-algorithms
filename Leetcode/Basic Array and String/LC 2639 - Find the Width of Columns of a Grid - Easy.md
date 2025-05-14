- This question is a part of [[Introduction - Arrays and Strings]]

```python
class Solution(object):
	def findColumnWidth(self, grid):
		"""
		:type grid: List[List[int]]		
		:rtype: List[int]
		"""
		cols = list(zip(*grid))
		ans = []
		
		for col in cols:
			empty = []
			for v in col:
				empty.append(len(str(v)))
		ans.append(max(empty))
		
		return ans
```

- Simply convert the matrix into column form. Then from there we iterate through columns and create an empty list. For each value in the column, we append it the length of it in string form, and append the max value to the ans list. 

