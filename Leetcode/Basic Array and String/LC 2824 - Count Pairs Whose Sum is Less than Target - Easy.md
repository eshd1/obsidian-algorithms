
- This question is part of [[Introduction - Arrays and Strings]]

```python
class Solution(object):
    def countPairs(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: int
        """
        counter = 0
        for i in range(len(nums)): 
            for j in range(i+1, len(nums)): 
                if nums[i] + nums[j] < target: 
                    counter += 1
        
        return counter
```

- Simply iterate through and increment a counter when the condition is satisfied. 

