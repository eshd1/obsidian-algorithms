- This question is part of the Math family of questions 

```python
from collections import defaultdict
class Solution(object):
	def getLucky(self, s, k):
		"""
		:type s: str
		:type k: int
		:rtype: int
		"""
		alphabet = "abcdefghijklmnopqrstuvwxyz"
		hashmap = defaultdict(int)
		
		for i in range(len(alphabet)):
			hashmap[alphabet[i]] = i+1
			
		convert = ""
		for c in s:
			convert += str(hashmap[c])

		while k > 0:
			l = sum([int(l) for l in str(convert)])
			k -= 1
			convert = l

		return convert
```

- Create a hashmap mapping each alphabet letter to its respective value, from there convert to a string of numbers, and then iterate until k == 0. Return the end sum. 