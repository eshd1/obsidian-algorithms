- This question is part of the [[Hashing]]. 

```python
from collections import Counter
class Solution:
    def canConstruct(self, ransomNote: str, magazine: str) -> bool:
        counts1 = Counter(ransomNote)
        counts2 = Counter(magazine)

        for s in ransomNote: 
            if counts1[s] > counts2[s]: 
                return False
        return True
```

- Super simple get the counts of both if at any given time the count of a char in ransomNote is higher then magazine return False, else True
