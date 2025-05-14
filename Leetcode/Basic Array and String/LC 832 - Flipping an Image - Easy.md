- This is a part of the [[Introduction - Arrays and Strings]]

```python
class Solution(object):
	def flipAndInvertImage(self, image):
		"""
		:type image: List[List[int]]
		:rtype: List[List[int]]
		"""
		# reverse
		for row in image:
			row.reverse()

		for row in image:
			for i in range(len(row)):
				if row[i] == 1:
					row[i] = 0
				else:
					row[i] = 1
		
		return image
```

- Just reverse each row. Then go through each value, and change depending on 0 or 1. Super simple LOL
