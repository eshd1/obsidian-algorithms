- This question is part of [[Introduction - Arrays and Strings]]

```python
class Solution(object):
	def slowestKey(self, releaseTimes, keysPressed):
		"""
		:type releaseTimes: List[int]
		:type keysPressed: str
		:rtype: str
		"""
		slowest = releaseTimes[0]
		character = keysPressed[0]
		
		for i in range(1, len(keysPressed)):
			if abs(releaseTimes[i] - releaseTimes[i-1]) > slowest:
				slowest = abs(releaseTimes[i] - releaseTimes[i-1])
				character = keysPressed[i]
		
			elif abs(releaseTimes[i] - releaseTimes[i-1]) == slowest:
				if keysPressed[i] > character:
					character = keysPressed[i]
		
		return character
```

- This question is super simple, we set two variables to the first value of both lists. Then go through 1, len(list). Then check if the abs values of the times is > then slowest. If the conditions are met update the variables. 