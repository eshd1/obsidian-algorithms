- This question is a part of [[Introduction - Arrays and Strings]]

```python
class Solution(object):
	def kLengthApart(self, nums, k):
		"""
		:type nums: List[int]
		:type k: int
		:rtype: bool
		"""
		counter = -1
		for i, num in enumerate(nums):
			if num == 1:
				if counter != -1 and i - counter <= k:
					return False
		
			counter = i
		return True
```

- Initialize a counter to -1, if num == 1 and if counter != -1 and current idx - counter ≤k. Then return False. Other wise counter = idx. 

