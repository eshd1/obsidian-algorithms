- This is a classic sorting question

```python
class Solution:
	def wiggleSort(self, nums: List[int]) -> None:
		"""
		Do not return anything, modify nums in-place instead.
		"""
		n = len(nums)

		for i in range(n-1):
			if (i % 2 == 0 and nums[i] > nums[i+1]) or (i % 2 == 1 and nums[i] < nums[i+1]):
				nums[i], nums[i+1] = nums[i+1], nums[i]
```

- We have two conditions, if they are not met then we reorder: 
	- i % 2 == 0, nums[i] ≤ nums[i+1]
	- i % 2 == 1, nums[i] ≥ nums[i+1]
- So then we check the opposite and reorder it if the conditions are not met. 

