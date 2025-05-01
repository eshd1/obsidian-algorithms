- This question is a part of the [[Hashing]] family. 

```python
from collections import defaultdict
class Solution(object):
	def calculateTime(self, keyboard, word):
		"""
		:type keyboard: str
		:type word: str
		:rtype: int
		"""
		values = defaultdict(int)
		counter = 0
		
		for i in range(len(keyboard)):
			values[keyboard[i]] = i
	
		last = 0
		new = 0
		for c in word:
			new = values[c]
			counter += abs(new - last)
			last = new
		
		return counter
```

- Create a hash table to add the index of each character in the alphabet. Then create two pointers, last and new. New equals the index of the char and then do the math and add to the counter. Then set last = new 