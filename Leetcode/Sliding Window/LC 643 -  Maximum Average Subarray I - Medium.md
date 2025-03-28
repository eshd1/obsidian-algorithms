- This is one of the questions given in the [[Sliding Window]] section. 

```python
class Solution:
    def findMaxAverage(self, nums: List[int], k: int) -> float:
        curr = 0
        for i in range(k): 
            curr += nums[i]

        ans = curr
        for i in range(k, len(nums)): 
            curr += nums[i] - nums[i-k]
            ans = max(ans, curr)
        
        return ans/k
```

- This one is very straightforward do a standard fixed window and then divide by k to get the maximum average as the highest sum will have the greatest average. 