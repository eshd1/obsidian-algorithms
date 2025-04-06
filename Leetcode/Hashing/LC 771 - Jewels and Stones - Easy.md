- This question is a part of the [[Hashing]] family of questions

```python
from collections import Counter
class Solution:
    def numJewelsInStones(self, jewels: str, stones: str) -> int:
        counts = Counter()
        count = 0
        for s in jewels: 
            counts[s] = 0
        
        for s in stones: 
            if s in counts: 
                counts[s] += 1
        
        
        for v in counts.values(): 
            if v > 0: 
                count += v
        
        return count
```

- Simply create a counter that creates a key for every char in jewels. Then check if s in counts for stones if it does increment the count. 