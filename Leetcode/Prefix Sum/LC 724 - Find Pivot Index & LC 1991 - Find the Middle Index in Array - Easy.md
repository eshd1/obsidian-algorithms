- This question is a part [[Prefix Sum]]
- For this question also take a look at [[LC 2270 - Number of Ways to Split Array - Medium]]

```python
class Solution:
	def findMiddleIndex(self, nums: List[int]) -> int:
		left = 0
		n = len(nums)
		total = sum(nums)

		for i in range(n):
			right = total - left - nums[i]
			if left == right:
				return i
			left += nums[i]
		
		return -1
```

- Unlike LC 2270 for this we have to remove nums[i] which is the pivot index from the right sum. We have to additionally increment leftSum after the loop. Only increment if it fails the check. 