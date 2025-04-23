- This question is a easy math question. 

```python
class Solution:
	def commonFactors(self, a: int, b: int) -> int:
		maxv = max(a, b)
		counter = 0
		for i in range(1, maxv+1):
			if a % i == 0 and b % i == 0:
				counter += 1

		return counter
```

- Get the max value, between a or b, loop till maxv+1. Then a % i == 0 and b % i == 0 if this statement is true then increment counter by 1. 

