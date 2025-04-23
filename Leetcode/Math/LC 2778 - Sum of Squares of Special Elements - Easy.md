```python
class Solution:
	def sumOfSquares(self, nums: List[int]) -> int:
		special = []
		val = 0
		n = len(nums)
		
		for i in range(len(nums)):
			if n % (i+1) == 0:=
				special.append(nums[i])
		
		for v in special:
			val += v ** 2
		
		return val
```

- This question is really dumb lol
- Create a list to hold all the special values. Set val = 0, and n = len(nums). Then iterate through nums, since this is a 1-indexed list, if n%(i+1) == 0. Append(nums[i]) to the special list.
- Lastly iterate through the new list and add the square of each number present in it.