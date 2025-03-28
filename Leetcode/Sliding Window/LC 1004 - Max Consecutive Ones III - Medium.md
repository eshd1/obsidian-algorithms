- This question is also another classic [[Sliding Window]] problem, however, instead of having to just deal with the largest consecutive subarray of ones. You have k flips. 

```python
class Solution:
    def longestOnes(self, nums: List[int], k: int) -> int:
        left = zeros = max_len = 0

        for right in range(len(nums)): 
            if nums[right] == 0: 
                zeros += 1
            while zeros > k: 
                if nums[left] == 0: 
                    zeros -= 1
                left += 1
            
            max_len = max(max_len, right - left + 1)
        return max_len
```

- As we can see we have the same structure but use a counter for how many zeros we have, if its larger then k we shrink the window by making it smaller from the left. 
