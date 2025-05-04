- This question is a little tricky and is part of [[Introduction - Arrays and Strings]]

```python
class Solution(object):
	def replaceElements(self, arr):
		"""
		:type arr: List[int]
		:rtype: List[int]
		"""
		max_right = -1
		for i in range(len(arr)-1, -1, -1):
			current = arr[i]
			arr[i] = max_right
			max_right = max(current, max_right)
		
		return arr
```

- We go through reverse, we set current to the arr[i] and then set the current value to max_right. From there we find the max between max_right and current and continue the process. 

