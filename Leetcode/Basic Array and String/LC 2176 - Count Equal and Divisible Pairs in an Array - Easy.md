- This question part of the [[Introduction - Arrays and Strings]]

```python
class Solution(object):
	def countPairs(self, nums, k):
		"""
		:type nums: List[int]
		:type k: int
		:rtype: int
		"""
		counter = 0
		for i in range(len(nums)):
			for j in range(len(nums)):
				if (i < j) and nums[i] == nums[j] and (i * j)%k == 0:
					counter += 1
		
		return counter
```

- This question is quite easy using brute force method. We can do it using hashing, but otherwise we just use two pointers and checked if all checkpoints are met. IF SO counter += 1. Return counter

