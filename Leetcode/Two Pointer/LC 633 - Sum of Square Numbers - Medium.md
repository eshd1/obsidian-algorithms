- Part of the [[Two Pointers]] family

```python 
class Solution:
	def judgeSquareSum(self, c: int) -> bool:
		left = 0
		right = int(sqrt(c))

		while left <= right:
			if (left**2 + right**2) == c:
				return True
		
			elif (left**2 + right**2) < c:
				left += 1
		
			else:
				right -= 1
		return False
```

- This question is quite simple. We use a two pointer approach to solve it. We iterate till sqrt(c) and we set right as int(sqrt(c)). If the sum of the left and right pointer == c return True other wise increment or decrement the pointers. 