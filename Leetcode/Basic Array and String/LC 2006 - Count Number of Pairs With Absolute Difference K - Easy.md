- This question is a part of [[Introduction - Arrays and Strings]]

```python
class Solution(object):
	def countKDifference(self, nums, k):
		"""
		:type nums: List[int]
		:type k: int
		:rtype: int
		"""
		counter = 0
		for i in range(len(nums)):
			for j in range(len(nums)):
				if (i < j) and abs(nums[i] - nums[j]) == k:
					counter += 1
		
		return counter
```

- Iterate through and then check if the pairs satisfy the requirements. If they do increment the counter. 