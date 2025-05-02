- This question is part of the [[Hashing]]

```python
from collections import Counter
class Solution(object):
	def mergeSimilarItems(self, items1, items2):
		"""
		:type items1: List[List[int]]
		:type items2: List[List[int]]
		:rtype: List[List[int]]
		"""
		count = Counter()
		res = []
		
		for sub in items1:
			count[sub[0]] += sub[1]
	
		for v in items2:
			count[v[0]] += v[1]
		
		for k, v in count.items():
			res.append([k, v])
		
		return sorted(res)
```

- This question isn’t too bad at all, store all the keys and their values in a counter. Then run through append the keys and values to a list and append to a list.  Return the sorted list. 

