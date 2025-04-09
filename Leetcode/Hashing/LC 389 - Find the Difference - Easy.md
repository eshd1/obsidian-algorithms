- This question is using [[Hashing]]

```python 
from collections import Counter
class Solution:
	def findTheDifference(self, s: str, t: str) -> str:
		count1 = Counter(s)
		count2 = Counter(t)
	
		for k, _ in count2.items():
			if k not in count1:
				return k
		
		for k, v in count1.items():
			if count2[k] == v+1:
				return k
```

- Simply have two for loops that first check if the key is in count1, then do a second check for both k and v to see if any value is v+1 return k for that value.