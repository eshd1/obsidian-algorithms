- This question is part of the sorting.

```python
class Solution:
	def kClosest(self, points: List[List[int]], k: int) -> List[List[int]]:
		points.sort(key=lambda point: point[0]**2 + point[1]**2)
		return points[:k]
```

- Since we are just comparing to the origin we just need to check the square X^2 + Y^2. Then we can use a lambda to sort it in ascending order, and then return till k points. 
