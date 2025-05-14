- This question is part of the [[Hashing]] family 

```python
from collections import defaultdict
class Solution(object):
	def groupThePeople(self, groupSizes):
	"""
	:type groupSizes: List[int]
	:rtype: List[List[int]]
	"""
	tracker = defaultdict(list)
	ans = []
	for i, size in enumerate(groupSizes):
		if len(tracker[size]) == size:
			ans.append(tracker[size])
			tracker[size] = []
			tracker[size].append(i)
		else:
			tracker[size].append(i)
	
	for k, v in tracker.items():
		ans.append(tracker[k])
	
	return ans
```

- Create a defaultdict(list) to track all the indexes for all the values in groupSizes. If the size reaches the size in groupSizes then we append it. Otherwise we append at the end with the remaining lists. 

