- This question is part of the Sorting family of questions 
 
```python
class Solution(object):
	def numberOfPoints(self, nums):
		"""
		:type nums: List[List[int]]
		:rtype: int
		"""
		nums.sort(key=lambda x: x[0])
		res = set()

		for start, end in nums:
			for value in range(start, end+1):
				res.add(value)
		
		return len(res)
```

- This question is quite easy use a set to not track values we have already seen. Then add values and return the length of the set. 



