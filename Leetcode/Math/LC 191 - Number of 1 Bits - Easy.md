```python
class Solution:
	def hammingWeight(self, n: int) -> int:
		value = bin(n)
		list_ver = list(str(value))
		counter = 0

		for i in range(len(list_ver)-2):
			if list_ver[i+2] == "1":
				counter += 1
		
		return counter
```

- May have cheated a bit, but who likes bit manipulation. Simply ignore the first 2 parts of the string and check is the char is a 1 is it is increment counter. 