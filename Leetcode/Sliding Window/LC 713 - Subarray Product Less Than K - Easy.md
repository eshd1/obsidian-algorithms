- This question is a typical implementation of the [[Sliding Window]] Algorithm, however instead of taking the max(ans, right - left + 1). We do ans += right - left + 1

```python 
class Solution:
    def numSubarrayProductLessThanK(self, nums: List[int], k: int) -> int:
        if k <= 1:
            return 0

        ans = left = 0
        curr = 1

        for right in range(len(nums)):
            curr *= nums[right]
            while curr >= k:
                curr //= nums[left]
                left += 1
                
            ans += right - left + 1

        return ans
```

- Otherwise this is a pretty much standard implementation of any sliding window problem. 