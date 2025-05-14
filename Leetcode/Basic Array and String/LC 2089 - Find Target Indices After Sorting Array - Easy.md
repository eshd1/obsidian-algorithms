- This question is part of [[Introduction - Arrays and Strings]]

```python
from collections import defaultdict
class Solution(object):
    def targetIndices(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: List[int]
        """
        tracker = defaultdict(list)
        nums = sorted(nums)

        for i, num in enumerate(nums): 
            tracker[num].append(i)

        return tracker[target]
```

- Create a defaultdict to track append the idx and then return the list of the target.