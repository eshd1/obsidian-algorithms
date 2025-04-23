- This question is a part of [[Algorithms/Arrays and Strings/Introduction - Arrays and Strings]]

```python
class Solution:
	def minimumAverage(self, nums: List[int]) -> float:
		n = len(nums)
		sorted_nums = sorted(nums)
		res = []
		
		for _ in range(n//2):
			minv = sorted_nums.pop(0)
			maxv = sorted_nums.pop(-1)
			res.append((minv+maxv)/2)
		
		return min(res)
```

- Simply go through the list n//2 times pop each endpoint and append the average to a list, return the minimum of that list. 