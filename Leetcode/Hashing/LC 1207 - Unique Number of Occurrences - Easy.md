- This question belongs to the [[Hashing]] family of questions. 

```python
from collections import Counter
class Solution:
	def uniqueOccurrences(self, arr: List[int]) -> bool:
		counts = Counter(arr)
	
		if len(set(counts.values())) == len(set(arr)):
			return True
	
	return False
```

- Create two different sets, one for the array and one for counts.values(), compare the lengths if same return True, otherwise return False. 

