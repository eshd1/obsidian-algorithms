- This question is a part of the [[Hashing]] family

```python
class Solution:
def maxSubArrayLen(self, nums: List[int], k: int) -> int:
	curr = 0
	max_len = 0
	hashmap = {0:-1}

	for i, num in enumerate(nums):
		curr += num
		if (curr-k) in hashmap:
			max_len = max(max_len, i - hashmap[curr-k])
		
		if curr not in hashmap:
			hashmap[curr] = i
	
	return max_len
```

- This problem asks us to find the maximum length of a contiguous subarray within an integer array nums that sums exactly to a target value k. A simple sliding window approach won’t work here due to the possible presence of negative numbers, which can disrupt the assumptions that the window sum grows or shrinks in a predictable way. Instead, we use a more robust approach based on prefix sums and a hashmap. As we iterate through the array, we maintain a running sum (prefix sum) and store the first occurrence of each prefix sum in a hashmap. At each step, we check if the difference between the current prefix sum and k has been seen before. If it has, that means the subarray between the previous index and the current index sums to k, and we can compute its length. By always storing the earliest occurrence of each prefix sum, we ensure that the resulting subarray is the longest possible. This method efficiently finds the solution in linear time, even in the presence of negative values.
