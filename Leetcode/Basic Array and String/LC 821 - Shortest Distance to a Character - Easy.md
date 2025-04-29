- This question is part of Array and Strings - [[Introduction - Arrays and Strings]]

```python
class Solution:
	def shortestToChar(self, s: str, c: str) -> List[int]:
		e_index = []
		ans = []
		
		for i in range(len(s)):
			if s[i] == c:
				e_index.append(i)
		
		for i in range(len(s)):
			check = []
			for val in e_index:
				check.append(abs(i-val))
			ans.append(min(check))
		
		return ans
```

- We create a index list that tracks all the character values. Then from there we create a check list that will store all the distances for a character against the character indexes. Then we append the minimum distance in ans and continue 
