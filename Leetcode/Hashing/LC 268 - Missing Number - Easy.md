- This is a part of the [[Hashing]] family. 
```python
from collections import Counter
class Solution:
    def missingNumber(self, nums: List[int]) -> int:
        hashmap = Counter()
        n = len(nums)

        for val in range(n+1): 
            hashmap[val] = 0

        for val in nums: 
            hashmap[val] += 1

        for k, v in hashmap.items(): 
            if v == 0: 
                return k
```

- Simple Counter instantiates all the numbers in range, and then increment += 1. Then check if val == 0 and then return the key. 

