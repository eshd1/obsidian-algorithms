- This question is a part of the [[Two Pointers]] family

```python
class Solution(object):
	def checkIfExist(self, arr):
		"""
		:type arr: List[int]
		:rtype: bool
		"""
		for i in range(len(arr)):
			for j in range(len(arr)):
				if i != j:
					if arr[i] == 2*arr[j]:
						return True
		
		return False
```

- This question was a two pointer question, basically run two points through the list and then check if i!=j and arr[i] = 2 x arr[j] at any point in the array. Return True if both of these are True, else return False. 

