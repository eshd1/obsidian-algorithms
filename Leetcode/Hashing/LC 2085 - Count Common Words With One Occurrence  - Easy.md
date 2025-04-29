- This question is part of the [[Hashing]] family. 

```python
from collections import Counter
class Solution:
    def countWords(self, words1: List[str], words2: List[str]) -> int:
        ans = 0 

        count1 = Counter(words1)
        count2 = Counter(words2)

        for k, v in count1.items(): 
            if k in count2:
                if count2[k] == 1 and count1[k] == 1: 
                    ans+=1
        return ans
```

- Simply create a counter for both words, then check if the key is in both counters and then check if the value of the key is 1. If it is ans+=1 