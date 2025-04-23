- This question is part of the [[Algorithms/Arrays and Strings/Introduction - Arrays and Strings]] family

```python
class Solution:
def minimumAbsDifference(self, arr: List[int]) -> List[List[int]]:
	
	res = []
	arr_sort = sorted(arr)
	minimum = float('inf')
	
	for i in range(len(arr_sort)-1):
		check = abs(arr_sort[i]-arr_sort[i+1])
		if check < minimum:
			minimum = check
	
	for i in range(len(arr_sort)-1):
		if arr_sort[i+1]-arr_sort[i]==minimum:
			res.append([arr_sort[i], arr_sort[i+1]])
	
	return res
```

- This question is a little tricky however sorting it makes it easy. We can check adjacent pairs since we are checking for the smallest mean difference. Thats why it has to be sorted. Then we can just do arr_sort[i+1] and arr_sort[i]
- 