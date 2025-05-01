- This question is a part of the [[Hashing]]

```python
from collections import Counter
import re

class Solution(object):
	def mostCommonWord(self, paragraph, banned):
		"""
		:type paragraph: str
		:type banned: List[str]
		:rtype: str
		"""
		words = re.split(r'\W+', paragraph.lower())
		banned_set = set(banned)

		count = Counter(w for w in words if w and w not in banned_set)
		
		return count.most_common(1)[0][0]
```

- This question is a little tricky thanks to one dumb test case, but other wise split the paragraph once in lower case. Then check if the word in words is in banned if it isnt use a Counter to keep track. Return the most common word. 
