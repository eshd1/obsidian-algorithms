- This question is part of the Sorting family. 

```python
class Solution:
	def heightChecker(self, heights: List[int]) -> int:
		ans = 0
		expected = sorted(heights)
		
		for i in range(len(heights)):
			if heights[i] != expected[i]:
			ans += 1
			
		return ans
```

- Sort the list then we iterate through and check if height[i] != expected[i] and increment the counter and return the counter