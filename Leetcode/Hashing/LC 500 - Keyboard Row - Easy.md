- This question is part of the [[Hashing]] family

```python
class Solution:
def findWords(self, words: List[str]) -> List[str]:
	res = []
	for word in words:
		hashmap = {"row1": 0, "row2": 0, "row3": 0}
		for char in word:
			if char.lower() in "qwertyuiop":
				hashmap["row1"] += 1
			elif char.lower() in "asdfghjkl":
				hashmap["row2"] += 1
			elif char.lower() in "zxcvbnm":
				hashmap["row3"] += 1
		if list(hashmap.values()).count(0) == 2:
			res.append(word)
	
	return res
```

- Keep a dictionary keeping count of what character is in what row and increment the count, if there are two zeroes at the end append the word and then return the list.