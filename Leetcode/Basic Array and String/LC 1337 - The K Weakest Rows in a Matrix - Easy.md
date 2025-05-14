- This question is part of [[Introduction - Arrays and Strings]]

```python
class Solution(object):
	def kWeakestRows(self, mat, k):
		"""
		:type mat: List[List[int]]
		:type k: int
		:rtype: List[int]
		"""
		
		count = []
		ans = []
		
		for i, row in enumerate(mat):
			count.append([i, row.count(1)])
		
		count.sort(key=lambda x: x[1])
		
		for i in range(k):
			ans.append(count[i][0])
	
		return ans
```

- Simply get the counts with indexes in a list. Then sort the list by the second parameter. From there iterate to k and append the index to an answer list. 