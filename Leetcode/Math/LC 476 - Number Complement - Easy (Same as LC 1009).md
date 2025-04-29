- This question is part of the Math Family. 
```python
class Solution(object):
	def findComplement(self, num):
		"""
		:type num: int
		:rtype: int
		"""
		val = bin(num)
		new = str(val)[2:]
		new = list(new)
		
		for i in range(len(new)):
			if new[i] == "0":
				new[i] = "1"
			else:
				new[i] = "0"
		
		return int(''.join(new), 2)
```

- Convert the number to binary. From that remove the first 2 characters and make it a list because and then reverse the 0s and ones and convert back to a integer.