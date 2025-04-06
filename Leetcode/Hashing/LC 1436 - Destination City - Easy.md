- This question is a part of the [[Hashing]] family of questions. 

```python
class Solution:

	def destCity(self, paths: List[List[str]]) -> str:
		dest = ""
		set1 = set()
		set2 = set()
		
		for i in range(len(paths)):
			set1.add(paths[i][0])
			set2.add(paths[i][1])

		for val in set2:
			if val in set1:
				pass
			else:
				dest = val
		
		return dest
```

- Simply check if the destB city is in the other set if it is then pass otherwise that is your destination. We can do this without hashing but added under this as it can be done with hashing too. 
