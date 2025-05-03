- This question is part of the Sorting family. 

```python
class Solution(object):
	def merge(self, intervals):
		"""
		:type intervals: List[List[int]]
		:rtype: List[List[int]]
		"""
		intervals.sort(key=lambda x: x[0])
		result = [intervals[0]]
		
		for current in intervals[1:]:
			last = result[-1]
		
			if current[0] <= last[1]:
				last[1] = max(current[1], last[1])
		
			else:
				result.append(current)
		
		return result
```

- This question isnt bad just kind of tricky to conceptualize. First we set the result to the first value in the intervals from there we go through the values of intervals from [1:] onwards if the last value in the result list ≤ to the current values first index, then we set the last[1] to the max of current and last. Otherwise we append. 
