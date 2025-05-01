- This question is part of [[Introduction - Arrays and Strings]]
```python
class Solution(object):
	def shortestWordDistance(self, wordsDict, word1, word2):
		"""
		:type wordsDict: List[str]
		:type word1: str
		:type word2: str
		:rtype: int
		"""
		minimum = float("inf")
		idx1 = idx2 = -1
		
		for i, word in enumerate(wordsDict):
			if word == word1:
				if word1 == word2:
					idx1 = idx2
			idx2 = i
			
			elif word == word2:
				idx1 = i 
				
			if idx1 != -1 and idx2 != -1 and idx1 != idx2:
				minimum = min(minimum, abs(idx1-idx2))
		
		return minimum
```

- Have a running track of the indexes and then update when you see a word, if word1=word2 then set one of the indexes to the previous index. Get the minimum distance and return. 
