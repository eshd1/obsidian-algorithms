```python
class Solution:
	def isPerfectSquare(self, num: int) -> bool:
		left = 1
		right = num
		
		while left <= right:
			mid = (left+right)//2
			check = mid * mid

			if num == check:
				return True
		
			elif check < num:
				left = mid + 1
				
			else:
				right = mid - 1
		
		return False
```

- This question will give a TLE if you use a normal method and we can’t use normal functions. 
- We use binary search to easily solve this by splitting it and iterating through, and setting left or right less then or greater then mid. 