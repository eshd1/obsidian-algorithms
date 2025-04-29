- This question is part of the sorting family of questions. 

```python
from collections import Counter
class Solution:
	def uncommonFromSentences(self, s1: str, s2: str) -> List[str]:
		s1 = s1.split()
		s2 = s2.split()

		combined = s1 + s2
		count = Counter(combined)
		ans = []

		for k, v in count.items():
			if v == 1:
				ans.append(k)
		return ans
```

- Split the springs using .split method, then combine the lists, use a counter to track the counts of words. Then check if any of the values = 1 if they do append to ans. 