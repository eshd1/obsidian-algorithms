- This question is a part of the [[Hashing]] family 

```python 
from collections import Counter
class Solution:
	def maxFrequencyElements(self, nums: List[int]) -> int:
		max_freq = 0
		counts = Counter(nums)
		empty = []
		max_freq = max(counts.values())
		
		for v in counts.values():
			if v == max_freq:
				empty.append(v)
		
		return sum(empty)
```

- Simply use a counter to keep track of all the frequencies in nums. Then get the max_frequency if any other values are the same as it and append to a list and return the sum of the list.