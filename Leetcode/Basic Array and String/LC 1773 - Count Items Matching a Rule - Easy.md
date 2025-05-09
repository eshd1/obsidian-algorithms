- This question is a part of [[Introduction - Arrays and Strings]]

```python
class Solution(object):
	def countMatches(self, items, ruleKey, ruleValue):
		"""
		:type items: List[List[str]]
		:type ruleKey: str
		:type ruleValue: str
		:rtype: int
		"""
		if ruleKey == "type":
			idx = 0
		elif ruleKey == "color":
			idx = 1
		else:
			idx = 2
		counter = 0
		
		for item in items:
			if item[idx] == ruleValue:
				counter += 1

		return counter
```

- Set out idx depending on the value of the key, then iterate through the items and check if the item[idx] == ruleValue increment the counter. 