- This is the same type of [[Sliding Window]] problem and [[LC 487 - Max Consecutive Ones II - Medium]] and [[LC 1004 - Max Consecutive Ones III - Medium]] build off of this one. 

```python
class Solution:
    def longestOnes(self, nums: List[int], k: int) -> int:
        left = zeros = max_len = 0

        for right in range(len(nums)): 
            if nums[right] == 0: 
                zeros += 1
            while zeros > 0:  # same as the other two but no k or 1 just zero
                if nums[left] == 0: 
                    zeros -= 1
                left += 1
            
            max_len = max(max_len, right - left + 1)
        return max_len
```

- Refer the other problems for a more complicated question but same structure. 
