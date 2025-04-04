- This question is part of the [[Hashing]] section 
- Very straightforward question 

```python
class Solution:
	def areOccurrencesEqual(self, s: str) -> bool:
		check = Counter(s)
		if len(set(check.values())) > 1:
			return False
		return True
```

- Check if any of the values are not the same if they are return True, else false. 
