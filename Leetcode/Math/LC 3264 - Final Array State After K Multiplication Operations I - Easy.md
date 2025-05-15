- This question is part of the Math family of questions

```python
class Solution(object):
    def getFinalState(self, nums, k, multiplier):
        """
        :type nums: List[int]
        :type k: int
        :type multiplier: int
        :rtype: List[int]
        """
        
        while k != 0: 
            value = min(nums)
            idx = nums.index(value)
            nums[idx] = value * multiplier
            k-=1
        return nums
```

- Go until k != 0 then from there find the min value and the idx of the value. Replace the index with value * multiplier. Decrement k and then return nums. 