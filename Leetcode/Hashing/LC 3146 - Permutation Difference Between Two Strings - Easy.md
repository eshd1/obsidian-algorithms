- This question is part of the [[Hashing]]

```python
from collections import defaultdict
class Solution(object):
	def findPermutationDifference(self, s, t):
		"""
		:type s: str
		:type t: str
		:rtype: int
		"""
		total = 0
		count1 = defaultdict(int)
		count2 = defaultdict(int)

		for i in range(len(s)):
			count1[s[i]] = i
			count2[t[i]] = i
		
		for k, v in count1.items():
			total += abs(count1[k]-count2[k])
		
		return total
```

- We make two different defaultdicts to then we add the index with the character. Then we append the absolute value of the indexes of the two different strings to the total. 
