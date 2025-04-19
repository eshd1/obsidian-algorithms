- This question is part of [[[Introduction - Arrays and Strings]]

```python
class Solution:
	def shortestDistance(self, wordsDict: List[str], word1: str, word2: str) -> int:
		idx1 = idx2 = -1
		min_dist = float('inf')
		for i, word in enumerate(wordsDict):
			if word == word1:
				idx1 = i
			elif word == word2:
				idx2 = i
		
			if idx1 != -1 and idx2 != -1:
				min_dist = min(min_dist, abs(idx1 - idx2))
				
		return min_dist
```

- We iterate through once we find the lowest indexes for both we get the absolute value and compare it to the minimum distance. Then return minimum distance. 
