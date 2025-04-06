- This question is part of the [[Hashing]] family. 

```python
from collections import Counter
class Solution:
	def frequencySort(self, s: str) -> str:
		empty = ""
		counts = Counter(s)
		sorted_counts = counts.most_common()
		
		for items in sorted_counts:
			empty+=items[0]*items[1]
		
		return empty
```

- Use a counter, sort the counter using the most_common function. Then create a new string by adding the character the number of times it appears.