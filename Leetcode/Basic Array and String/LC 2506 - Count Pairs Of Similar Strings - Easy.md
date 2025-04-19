- This question is part of the [[Introduction - Arrays and Strings]] family. 

```python
from collections import Counter
class Solution:
	def similarPairs(self, words: List[str]) -> int:
		counter = 0
		for i in range(len(words)):
			count1 = Counter(words[i])
			for j in range(len(words)):
				count2 = Counter(words[j])
				if (i != j) and (count1.keys()==count2.keys()):
					counter += 1
		
		return counter//2
```

- For this question compare the keys of two different words and increment the counter by 1 if they satisfy the condition. However, we check each pair twice so we have to divide by 2 when we return the counter. 
