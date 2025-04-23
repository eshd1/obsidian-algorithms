```python
class Solution:
	def isPowerOfTwo(self, n: int) -> bool:
		if n <= 0:
			return False
		if n == 1:
			return True
		
		return (n % 2 == 0) and self.isPowerOfTwo(n//2)
```

- Simple recurse and keep dividing by 2 if it is divisible by 2 until we reach base case, this works for the other 2 questions as well. 