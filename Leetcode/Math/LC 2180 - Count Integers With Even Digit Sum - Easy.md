- This question is a part of the Math family of questions

```python
class Solution(object):
	def countEven(self, num):
		"""
		:type num: int
		:rtype: int
		"""
		counter = 0
		for i in range(1, num+1):
			l = [int(l) for l in str(i)]
			if sum(l) % 2 == 0:
				counter += 1
		return counter
```

- Simply go through the list and see if the individual values add up to an even number