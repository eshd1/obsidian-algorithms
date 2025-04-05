- This question is a part of both the [[Sliding Window]] and [[Hashing]] family of questions. 

```python
from collections import CounteR

def find_longest_substring(s, k):
    counts = Counter()
    left = ans = 0
    for right in range(len(s)):
        counts[s[right]] += 1
        while len(counts) > 2:
            counts[s[left]] -= 1
            if counts[s[left]] == 0:
                del counts[s[left]]
            left += 1
        
        ans = max(ans, right - left + 1)
    
    return ans
```

- Same concept as LC 348 that can be found in the examples of the Hashing notes. Instead of going `while len(counts) > k` we do > 2. Since we only need to get the longest Substring with at most two characters. 

