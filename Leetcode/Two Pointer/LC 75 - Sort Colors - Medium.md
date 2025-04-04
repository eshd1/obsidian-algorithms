- This question is part of the [[Two Pointers]] family. 
- However for this question we utilize a left, a right, and an iterating pointer to keep track. 

```python
class Solution:
	def sortColors(self, nums: List[int]) -> None:
		"""
		Do not return anything, modify nums in-place instead.
		"""
		p1 = 0
		p2 = len(nums) - 1
		i = 0
		
		while i <= p2:
			if nums[i] == 0:
				nums[i], nums[p1] = nums[p1], nums[i]
				i+=1
				p1 +=1
			elif nums[i] == 2:
				nums[i], nums[p2] = nums[p2], nums[i]
				p2 -= 1
				# do not increment i here because we need to see what we flipped 
			else:
				i +=1
```

- This approach uses 3 pointers to keep track for sorting. 

