- This question is similar to [[LC 56 - Merge Intervals - Medium]] and is part of the Sorting Family 

```python 
class Solution(object):
	def canAttendMeetings(self, intervals):
		"""
		:type intervals: List[List[int]]		
		:rtype: bool
		"""
		if intervals == []:
			return True
		
		intervals.sort(key=lambda x: x[0])
		res = [intervals[0]]
		
		for current in intervals[1:]:
			last = res[-1]
		
			if last[1] > current[0]:
				return False
		
			else:
				res.append(current)
		
		return True
```

- Same thing as number 56, however just return False if an invalid meeting time is met. 

