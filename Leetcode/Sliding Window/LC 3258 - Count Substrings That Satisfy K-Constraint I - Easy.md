- This is a very similar question to [[LC 485 - Max Consecutive Ones - Easy]] and is a part of the [[Sliding Window]] topic. 

```python
class Solution:
	def countKConstraintSubstrings(self, s: str, k: int) -> int:
		left = zeros = ones = ans = 0
		for right in range(len(s)):
			if s[right] == '0':
				zeros += 1
			else:
				ones += 1
			
			while zeros > k and ones > k:
				if s[left] == '0':
					zeros -= 1
				else:
					ones -= 1
				left += 1
				
			ans += right - left + 1
		return ans
```

- Instead of LC 485 we use another case of ones as well and then check a double condition to see if we should move our window. 