- This question is part of the [[Hashing]] section 

```python
from collections import Counter
class Solution:
    def maxNumberOfBalloons(self, text: str) -> int:
        target = "balloon"
        hashmap = Counter()
        min_v = float('inf')

        for char in target: 
            hashmap[char] = 0
        
        for char in text: 
            if char in target: 
                hashmap[char] += 1

        valuel = hashmap['l']
        valueo = hashmap['o']

        hashmap['l'] = valuel//2
        hashmap['o'] = valueo//2

        for k, v in hashmap.items(): 
            if v < min_v: 
                min_v = v
        
        return min_v
```

- Since balloon has multiple letters we need to identify the letters that we need more then once. In our case this would be o and l. We divide the value by 2 and then return the minimum value which would give us the maximum number of times we can make balloons from the string. 

**Another Way to do It** 

```python
from collections import Counter
class Solution:
    def maxNumberOfBalloons(self, text: str) -> int:
        target = "balloon"
        target_counter = Counter(target)
        hashmap = Counter()
        min_v = float('inf')

        for char in target: 
            hashmap[char] = 0
        
        for char in text: 
            if char in target: 
                hashmap[char] += 1
        
        for char in target_counter: 
            min_v = min(min_v, hashmap[char]//target_counter[char])
        
        return min_v
```