- This question is part of the [[Hashing]] family of questions. 

```python
class Solution:
	
	def isHappy(self, n: int) -> bool:
		seen = set()
		while n != 1:
			if n in seen:
				return False
			seen.add(n)
			n = sum(int(digit) ** 2 for digit in str(n))
		return True
```

- This question is quite straightforward we keep a set to see if any of the numbers that we are going through has already been seen. Otherwise this will keep looping to infinity and we will get a TLE error. 

