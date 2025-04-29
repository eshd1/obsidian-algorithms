- This question is part of the sorting family. 

```python
from collections import Counter
class Solution:
	def findErrorNums(self, nums: List[int]) -> List[int]:
		missing = -1
		duplicate = -1
		count = Counter(nums)
		n = len(nums)
	
		for i in range(n):
			if i+1 not in nums:
				missing = i+1
		
		for k,v in count.items():
			if v == 2:
				duplicate = k
		
		return [duplicate, missing]
```

- Use a counter to find the duplicate and then just iterate through the range to find the missing. Can be done with hashing alone but I was too lazy LOL
