- This question is a part of the [[Hashing]] family of questions

```python
from collections import Counter
class Solution:
	def findLucky(self, arr: List[int]) -> int:
		counts = Counter(arr)
		empty = []
		
		for k, v in counts.items():
			if k == v:
				empty.append(k)

		if empty == []:
			return -1
		
		return max(empty)
```

- Simply check if the value of key is the same as v and append to an empty list. Then return the max of the list or if it is empty return -1 