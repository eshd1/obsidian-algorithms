- This question is really similar to [[LC 159 - Longest Substring With At Most Two Distinct Characters - Medium]] and is part of the [[Hashing]] family of questions. 

```python
from collections import Counter
class Solution:
	def maxSubarrayLength(self, nums: List[int], k: int) -> int:
		counts = Counter()
		left = ans = 0

		for right in range(len(nums)):
			counts[nums[right]] += 1
			while counts[nums[right]] > k:
				counts[nums[left]] -= 1
				left += 1
			ans = max(ans, right - left + 1)
		
		return ans
```

- This question is basically a [[Sliding Window]] question mixed with Hashing. However we keep track of when the count of the right pointer is greater then k. If it is decrement it. 