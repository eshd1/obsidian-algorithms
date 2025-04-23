```python
import math
class Solution:
	def mySqrt(self, x: int) -> int:
		if x < 2:
			return x

		left = 1
		right = x
		
		while left <= right:
			mid = (left + right) // 2
			check = mid * mid

			if check==x:
				return mid
			
			elif check < x:
				left = mid + 1
			
			else:
				right = mid - 1
		
		return right
```

- This question is the same as [[LC 367 - Valid Perfect Square - Easy]], however, this binary search is a little different because we return the mid value. However we have to return the right value cause this is the floor because in our iteration left will become the next smallest number that is greater then the value. 