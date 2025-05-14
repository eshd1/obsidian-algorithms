- This question is a part of [[Hashing]]

```python
from collections import defaultdict
class Solution(object):
	def maxStudentsOnBench(self, students):
		"""
		:type students: List[List[int]]
		:rtype: int
		"""
		count = defaultdict(list)
		lens = []
		
		for group in students:
			count[group[1]].append(group[0])
		
		for k,v in count.items():
			lens.append(len(set(count[k])))
	
		return max(lens) if lens else 0
```

- We create a defaultdict of lists. Then for each bench_id we append what students are sitting on it. Then we go through and to get the unique students we take the length of the set of that key value. Return the max lengths. 