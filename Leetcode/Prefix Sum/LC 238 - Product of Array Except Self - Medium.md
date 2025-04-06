- This question is part of the [[Prefix Sum]] family of questions 

```python
class Solution:
	def productExceptSelf(self, nums: List[int]) -> List[int]:
		n = len(nums)
		answer = [1] * n
		
		prefix = 1
		for i in range(n):
			answer[i] = prefix
			prefix *= nums[i]
			
		suffix = 1
		for i in range(n-1, -1, -1):
			answer[i] *= suffix
			suffix *= nums[i]
	
	return answer
```

- This question asks you to return an output array where each element at index i is the product of all the elements in the input array **except** the one at i. A key constraint is that you **cannot use division**, and you must solve it in **linear time**. To do this efficiently, the problem can be approached using two passes: one to build a prefix product (product of all elements before the current index) and another to build a suffix product (product of all elements after the current index). By multiplying the prefix and suffix products at each index, you get the desired result for that position. This method avoids redundant multiplication and achieves the goal in O(n) time and O(1) extra space (excluding the result array), making it both elegant and optimal.

