- This question is a part of [[Hashing]] family.

```python
from collections import Counter
class Solution:
	def topKFrequent(self, words: List[str], k: int) -> List[str]:
		res = []
		count = Counter(words)
		
		sorted_words = sorted(count.items(), key=lambda x: (-x[1], x[0]))
		
		for val, freq in sorted_words[:k]:
			res.append(val)
		
		return res
```

- Create a counter that counts the words, then use a lambda to sort lexographically and frequency wise. -x[1] will sort higher freqency first, and x[0] will sort lexographically. This gives us a sorted list of tuples. then iterate through and return res with the top k words.