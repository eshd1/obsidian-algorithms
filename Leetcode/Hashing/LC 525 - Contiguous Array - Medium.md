- This question is part of the [[Hashing]] family of questions

```python
from collections import Counter
class Solution:
    def findMaxLength(self, nums: List[int]) -> int:
        for i in range(len(nums)): 
            if nums[i] == 0: 
                nums[i] = -1
        
        hashmap = {0:-1}
        curr = 0
        ans = 0

        for i in range(len(nums)): 
            curr += nums[i]
            if curr in hashmap: 
                ans = max(ans, i - hashmap[curr])
            else: 
                hashmap[curr] = i
        return ans
```

- Convert ever zero to a -1 value so whenever the sum happens it equals out to zero. Then create a hashmap tracking sums to the first index of where you saw it. 
- Then if the current sum has been seen get the bigger index. Else add the index of where you saw the sum. 