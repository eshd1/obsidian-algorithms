- This question is part of the [[Prefix Sum]] family. 
- It follow the generic structure that can be found in the pseudocode in the note above. 

```python
class Solution:
    def runningSum(self, nums: List[int]) -> List[int]:
        prefix = [nums[0]]
        for i in range(1, len(nums)): 
            prefix.append(nums[i] + prefix[len(prefix)-1])
        return prefix
```

- Nothing special about this one, we keep adding the next value to the old total. 
