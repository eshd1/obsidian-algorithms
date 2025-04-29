- This question is part of the [[Introduction - Arrays and Strings]] section but is a little harder then ‘basic’

```python
class Solution:
	def nearestValidPoint(self, x: int, y: int, points: List[List[int]]) -> int:
		def manhattan(x1, y1, x2, y2):
			value = abs(x1-x2) + abs(y1-y2)
			return value

		minimum_idx = -1
		minimum = float('inf')
		
		for i in range(len(points)):
			if (points[i][0] == x) or (points[i][1] == y):
				distance = manhattan(x, y, points[i][0], points[i][1])
		
			if distance < minimum:
				minimum = distance
				minimum_idx = i
				
		return minimum_idx
```


- We create a subfunction to handle the manhattan distance. Then we set two values, the minimum_idx at -1, minimum value at float('inf').
- Then iterate through each point get the distance and check the distance against the minimum, if it is lower. Then, we make the swap and continue.
- Return the minimum idx at the end.