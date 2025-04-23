- This question is part of [[Algorithms/Arrays and Strings/Introduction - Arrays and Strings]]

```python
class Solution:
	def distinctAverages(self, nums: List[int]) -> int:
		n = len(nums)
		sorted_nums = sorted(nums)
		empty = []
		
		for _ in range(n//2):
			minv = sorted_nums.pop(0)
			maxv = sorted_nums.pop(-1)
			avg = (maxv + minv)/2
			empty.append(avg)
			
		return len(set(empty))
```

- This question is very similar to [[LC 3194 - Minimum Average of Smallest and Largest Elements - Easy]]
- Iterate through the list n//2 times then pop the endpoints each time and append the average to a list. Then use a set to get the distinct averages and return the length of the set. 
