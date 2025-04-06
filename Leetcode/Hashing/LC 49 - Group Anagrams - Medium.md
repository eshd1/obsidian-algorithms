- This question is part of the [[Hashing]] family of questions

```python
from collections import defaultdict

class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        groups = defaultdict(list)
        for s in strs:
            key = "".join(sorted(s))
            groups[key].append(s)
        
        return list(groups.values())
```

- Super simple question - we create a default dict with each key corresponding to a list, then we set our key to the sorted string and append the actual string to it. Continue this and then return a list of lists of the values in counts.