- This question is part of [[Introduction - Arrays and Strings]]

```python
class Solution(object):
	def arithmeticTriplets(self, nums, diff):
		"""
		:type nums: List[int]
		:type diff: int
		:rtype: int
		"""
		counter = 0
		for i in range(len(nums)):
			for j in range(i+1, len(nums)):
				if nums[j] - nums[i] == diff:
					for k in range(j+1, len(nums)):
						if nums[k] - nums[j] == diff:
							counter += 1

		return counter
```

- I had originally done this question using brute force with 3 loops, but that almost caused a TLE. However, we can use 3 loops more effectively. We can start the loop one index higher then the first, to avoid checking the same loops over and over again. Then check nums[j]-nums[i] == diff. Only then we move to the 3 loop because a prior condition has been confirmed. 