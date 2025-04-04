- This question is part of the [[Sliding Window]] family. 
- Instead of finding the maximum subarray we need to find the minimum

```python
class Solution:
	def minSubArrayLen(self, target: int, nums: List[int]) -> int:
		left = curr = 0
		ans = float('inf')
		
		for right in range(len(nums)):
			curr += nums[right]
			while curr >= target:
				ans = min(ans, right - left + 1)
				curr -= nums[left]
				left += 1
		
		if ans == float('inf'):
			return 0
		else:
			return ans
```

- We know that we have to find the minimum which means we need to do ans = min(ans, right - left + 1). In order to achieve this we need to set ans to float(‘inf’).  Otherwise the logic is the same as the pseudocode in the sliding window notes. 