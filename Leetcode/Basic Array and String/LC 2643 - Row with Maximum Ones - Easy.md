- This question is a apart of [[Introduction - Arrays and Strings]]

```python
class Solution(object):
	def rowAndMaximumOnes(self, mat):
		"""
		:type mat: List[List[int]]
		:rtype: List[int]
		"""
		one_count = []
		for i in range(len(mat)):
			one_count.append(mat[i].count(1))
	
		max_idx = one_count.index(max(one_count))
		return [max_idx, max(one_count)]
```

- This question is super simple, simply append all one counts to a matrix, from there then we get the index of the max_value and then return a list of the [max_value, max_one_count]
