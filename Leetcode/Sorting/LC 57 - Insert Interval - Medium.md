- This question is almost the same [[LC 56 - Merge Intervals - Medium]] and Sorting 

```python 
class Solution(object):
	def insert(self, intervals, newInterval):
		"""
		:type intervals: List[List[int]]
		:type newInterval: List[int]
		:rtype: List[List[int]]
		"""
		intervals.append(newInterval)
		intervals.sort(key=lambda x: x[0])
		res = [intervals[0]]
		
		for current in intervals[1:]:
			last = res[-1]
		
			if current[0] <= last[1]:
				last[1] = max(current[1], last[1])
			else:
				res.append(current)
				
		return res
```

- Look at explanation in Number 56, the only difference is too append it to the list before anything. 