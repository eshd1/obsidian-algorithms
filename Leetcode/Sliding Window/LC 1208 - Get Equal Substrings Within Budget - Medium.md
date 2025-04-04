- Standard [[Sliding Window]] question 
- Refer to the pseudocode for a standard sliding window in the main notes. 

```python
class Solution:
	def equalSubstring(self, s: str, t: str, maxCost: int) -> int:
		cost = left = ans = 0
		for right in range(len(s)):
			cost += abs(ord(s[right])-ord(t[right]))
			while cost > maxCost:
				cost -= abs(ord(s[left])-ord(t[left]))
				left += 1
		
		ans = max(ans, right - left + 1)
	
	  
	
	return ans
```

- ord function gets ASCII value of the character subtract using absolute value. Otherwise straightforward implementation as the pseudocode suggests.
