- This question is part of the [[Hashing]] family
- We can do this with a dict but for an easier approach I used the collections library and imported a Counter 

```python
from collections import Counter
class Solution:
    def findWinners(self, matches: List[List[int]]) -> List[List[int]]:
        hashmap = Counter()
        answer0, answer1 = [], []
        
        for i in range(len(matches)): 
            hashmap[str(matches[i][0])] = 0
            hashmap[str(matches[i][1])] = 0
        
        for i in range(len(matches)): 
            hashmap[str(matches[i][1])] += 1

        for k, v in hashmap.items(): 
            if v == 0: 
                answer0.append(int(k))
            elif v == 1: 
                answer1.append(int(k))
            else: 
                continue

        return [sorted(answer0), sorted(answer1)]
```

- Iterate through the inner lists and get all the players then increment all the losers and append accordingly to the how many times they lost. 