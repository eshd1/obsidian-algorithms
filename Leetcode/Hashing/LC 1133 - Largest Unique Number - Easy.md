- This question is part of the [[Hashing]] family

```python
from collections import Counter
class Solution:
    def largestUniqueNumber(self, nums: List[int]) -> int:
        hashmap = Counter(nums)
        max_val = -1 

        for k, v in hashmap.items(): 
            if v == 1 and k > max_val: 
                max_val = k 

        return max_val
```

- For this we simply have a max val holder if val == 0 and the new k is greater then the last max_val we set them equal and return max_val else return -1. 