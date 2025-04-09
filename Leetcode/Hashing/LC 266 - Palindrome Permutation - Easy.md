- This question is part of the [[Hashing]] family

```python
from collections import Counter
class Solution:
	def canPermutePalindrome(self, s: str) -> bool:
		count = Counter(s)
		odd = 0	
		for v in count.values():
			if v % 2 == 1:		
				odd += 1		
				if odd > 1:	
					return False
		return True
```

- Have a counter for odd frequencies and then check every value in the counter if v % 2 == 1. Increment odd += 1, if the number of odd counts is over 1 this string cannot be a palindrome.