- This questions is part of the sorting group. Currently this solution will solve it in O(n log n), however, in order to solve this in O(n) you can use a [[Two Pointers]] approach. 

```python
class Solution:
	def sortTransformedArray(self, nums: List[int], a: int, b: int, c: int) -> List[int]:
		def quadratic(x, a, b, c):
			result = (a * (x**2)) + (b * x) + c
			return result
			
		res = []
		for val in nums:
			value = quadratic(val, a, b, c)
			res.append(value)
		
		return sorted(res)
```

- We simply create a secondary function that handles the quadratic aspect of this question, then we append the value to a list and return the sorted list. 

