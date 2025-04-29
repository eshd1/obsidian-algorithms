- This question is part of the sorting family oof questions

```python
class Solution:
	def trimMean(self, arr: List[int]) -> float:
		arr.sort()
		n = len(arr)
		k = n * 0.05
		final = arr[int(k):n-int(k)]
	
		return sum(final)/len(final)
```

- This question is super simple just floor the 5% value. Then splice the list to shop of the first 5% and last 5% and then compute mean of the new list. 