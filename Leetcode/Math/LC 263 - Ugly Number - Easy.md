```python
class Solution:
	def isUgly(self, n: int) -> bool:
		if n <=0:
			return False
		for p in (2,3,5):
			while n % p == 0:
				n //=p
		
		return n==1
```

- If n≤0 return False, LC treats negative numbers as False. Otherwise iterate through the 3 primes. Basically until n=1 we keep checking. Otherwise we return False at the end. 

