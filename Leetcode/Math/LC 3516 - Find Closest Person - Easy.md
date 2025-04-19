- This question is part of the Math family of questions

```python
class Solution:
	def findClosest(self, x: int, y: int, z: int) -> int:
		if abs(x-z) > abs(y-z):
			return 2
		elif abs(x-z) == abs(y-z):
			return 0
		else:
			return 1
```

- Simply check the absolute value of the difference and depending on the outcome return 0, 1, 2. 
