
- This question is part of [[Hashing]]

```python
from collections import Counter
class Solution(object):
    def findMaxK(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        maxv = -1
        count = Counter(nums)

        for num in nums: 
            if (num and -num) in count: 
                maxv = max(num, maxv)
        
        return maxv
```

- Just check in the dict if both exist and get the max. 
