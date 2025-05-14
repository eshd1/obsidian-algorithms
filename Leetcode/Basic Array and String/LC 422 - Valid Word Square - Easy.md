- This question is part of [[Introduction - Arrays and Strings]]

```python
class Solution(object):
	def validWordSquare(self, words):
		"""
		:type words: List[str]
		:rtype: bool
		"""
		for i in range(len(words)):
			for j in range(len(words[i])):
				try:
					if words[i][j] != words[j][i]:
						return False
				except:
					return False

		return True
```

- This question is quite simple if the lengths i and j are different then we would have some issues. Thats why we use a try and except block to catch any issues and return False otherwise. 