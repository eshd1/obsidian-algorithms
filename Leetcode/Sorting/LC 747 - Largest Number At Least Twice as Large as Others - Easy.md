- This question is part of the Sorting family of questions. 

```python
class Solution:
	def dominantIndex(self, nums: List[int]) -> int:
		idx = nums.index(max(nums))
		max_v = nums.pop(idx)		  
		
		for num in nums:
			if max_v < num*2:
				return -1
			
		return idx
```

- For this question get that max values index stored in a variable. Then pop the max value. Then check against 2 * num for all other values, return -1 if it is less then any of the values. 
