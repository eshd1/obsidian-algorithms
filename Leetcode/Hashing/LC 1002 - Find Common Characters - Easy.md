- This question is part of the [[Hashing]] family 

```python
from collections import Counter
class Solution(object):
	def commonChars(self, words):
	"""
	:type words: List[str]
	:rtype: List[str]
	"""
	ans = []
	original = Counter(words[0])
	
	for i in range(1, len(words)):
		original &= Counter(words[i])
	
	for k, v in original.items():
		ans.extend([k] * v)
	
	return ans
```

- This question is trick I didn’t know we can do this but you can do &= to keep track of the common counts using a counter then just append the number of times it shows up. 

