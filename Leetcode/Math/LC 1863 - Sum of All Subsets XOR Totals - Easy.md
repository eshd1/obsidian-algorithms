- This question is part of the Math family of questions.

```python
from itertools import combinations	
class Solution(object):
	def subsetXORSum(self, nums):
		"""
		:type nums: List[int]
		:rtype: int
		"""
		res = []
		for r in range(len(nums)+1):
			for combo in combinations(nums, r):
				res.append(list(combo))
				
		total = 0
		for l in res:
			result = 0
			for num in l:
				result ^= num
			total += result
		
		return total
```

- We use itertools library to get the combinations function to get all the subsets in a list. We do that in the first for loop. Then we increment the total with the result of each subset list. 

