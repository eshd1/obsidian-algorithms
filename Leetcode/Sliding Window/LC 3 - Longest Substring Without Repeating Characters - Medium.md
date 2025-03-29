- Once again the same concept [[Sliding Window]]. 
- This one like the last is the same variation refer [[LC 713 - Subarray Product Less Than K - Easy]] 
```python
class Solution:

	def lengthOfLongestSubstring(self, s: str) -> int:
		left = 0
		max_l = 0
		sets = set()
	
		for right in range(len(s)):
			while s[right] in sets:
				sets.remove(s[left])				
				left += 1
				
			sets.add(s[right])
			max_l = max(max_l, right - left + 1)
		
		return max_l
	```

- However, this one is a different approach because the while loop checks if `s[right] in sets` then we remove if it is other wise we add it to it at the end. `max_l = max(max_l, right - left + 1)` 