- This question is part of the [[Introduction - Arrays and Strings]]

```python
class Solution(object):
	def minOperations(self, logs):
		"""
		:type logs: List[str]
		:rtype: int
		"""
		counter = 0
		
		for log in logs:
			if log == "../":
				if counter > 0:		
					counter -= 1
		
			elif log == "./":
				continue
		
			else:
				counter += 1
		
		return counter
```

- Simulate the situation - append the counter if its any value other then ./, ../ if its ../ then subtract 1 from the counter. Return the counter at the end. 

