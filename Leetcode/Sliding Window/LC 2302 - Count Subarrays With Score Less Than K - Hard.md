- This is a classic [[Sliding Window]] problem which includes an extra step. 
- For this we need to calculate the score which is equivalent to sum of the subarray/length of the subarray. 
- We know the length of the subarray is equivalent to right - left + 1 

```python
class Solution:
	def countSubarrays(self, nums: List[int], k: int) -> int:
		left = right = ans = 0
		current = 0
		for right in range(len(nums)):
			current += nums[right]
			while current * (right-left + 1) >= k:
				current -= nums[left]
				left +=1
			ans += right - left + 1
		
		return ans
```

- As we can see we have the same format for sliding window, but instead we check the condition 