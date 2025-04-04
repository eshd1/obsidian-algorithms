- Standard [[Prefix Sum]]

```python
class Solution:
	def largestAltitude(self, gain: List[int]) -> int:
		prefix = [0]
		for i in range(len(gain)):
			prefix.append(gain[i] + prefix[-1])
	
		return max(prefix)
```

- We set the initial altitude gain at prefix[0] = 0 and from there add and return the max of the list. 
