- This question is part of the Math family of questions 

```python
class Solution(object):
	def countOperations(self, num1, num2):
		"""
		:type num1: int
		:type num2: int
		:rtype: int
		"""

		counter = 0
		while (num1 > 0 and num2 > 0):
			if num1 >= num2:
				num1 = num1 - num2
				counter += 1

			else:
				num2 = num2 - num1
				counter+=1
		
		return counter
```

- Just run a while loop till num1 and num2 are larger then 0, and increment a counter. 

