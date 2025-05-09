- This question is part of the [[Hashing]] family of questions. 

```python
from collections import Counter
class Solution(object):
	def isConsecutive(self, nums):
		"""
		:type nums: List[int]
		:rtype: bool
		"""
		minv = min(nums)
		maxv = max(nums)
		count = Counter(nums)		  
		
		for v in range(minv, maxv+1):
			if count[v] == 0 or count[v] > 1:
				return False

		return True
```

- Create a counter to track how many times a value shows up. Then iterate through and if a numbers count is > 1 or == 0 then we return False. 
