- This is part of the [[Hashing]] family of questions 

```python
from collections import defaultdict

class Solution:
    def numberOfSubarrays(self, nums: List[int], k: int) -> int:
        counts = defaultdict(int)
        counts[0] = 1
        ans = curr = 0
        
        for num in nums:
            curr += num % 2
            ans += counts[curr - k]
            counts[curr] += 1

        return ans
```

- We can check if a number is odd by taking it mod 2. If `x` is odd, then `x % 2 = 1`.

