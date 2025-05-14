- This question is a part of [[Introduction - Arrays and Strings]]

```python
class Solution(object):
	def luckyNumbers(self, matrix):
		"""
		:type matrix: List[List[int]]
		:rtype: List[int]
		"""
		lucky = []
		cols = list(zip(*matrix))
		minimum = []
		maximum = []

		for row in matrix:
			minimum.append(min(row))
		
		for col in cols:
			maximum.append(max(col))

		for val in minimum:
			if val in maximum:
				lucky.append(val)
		
		return lucky
```

- We store the minimum value of every column, and maximum of each row in two different lists. If a number shows up in both of the lists, it means it is a lucky number. Which we then append to lucky and return. 