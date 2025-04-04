- This question is part of the [[Two Pointers]] family. 

```python 
class Solution:
	def moveZeroes(self, nums: List[int]) -> None:
		"""
		Do not return anything, modify nums in-place instead.
		"""
		last = 0
		  
		for i in range(len(nums)):
			if nums[i] != 0:
				nums[last] = nums[i]
				last+=1
		
		for i in range(last, len(nums)):
			nums[i] = 0
```

- For this question we need to keep two pointers a `last` and a pointer that iterates through the list. The last index 