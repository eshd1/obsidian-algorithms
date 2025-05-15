- This question is part of [[Hashing]]

```python
from collections import defaultdict
class Solution(object):
    def maxFreqSum(self, s):
        """
        :type s: str
        :rtype: int
        """
        vowels = defaultdict(int)
        consonants = defaultdict(int)

        for c in s: 
            if c in "aeiou": 
                vowels[c] += 1
            else: 
                consonants[c] += 1

        if vowels.values() == []: 
            vowel_max = 0
        else: 
            vowel_max = max(vowels.values())
        if consonants.values() == []: 
            con_max = 0
        else: 
            con_max = max(consonants.values())

        return con_max + vowel_max
```

- For this question we create two separated dicts to handle vowels and consonants then get the max value from the dicts and return the sum. 