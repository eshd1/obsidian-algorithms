- Another question that falls under the [[Hashing]] umbrella
- i * (i - 1) / 2
```python
from collections import defaultdict
class Solution:
	def numIdenticalPairs(self, nums: List[int]) -> int:
		count = defaultdict(int)
		ans = 0
		
		for num in nums:
			ans += count[num]
			count[num] += 1
		
		return ans
```

- We basically check how many times we have seen an identical number and then increment the counter and return the final value. 