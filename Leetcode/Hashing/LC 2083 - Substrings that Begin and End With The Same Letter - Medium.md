- This question falls under the [[Hashing]] umbrella and is very similar to [[LC 1512 - Number of Good Pairs - Easy]]
- This is the **triangular number** formula — the number of combinations of starting and ending positions where both are the same character.
- i * (i + 1) / 2

```python
class Solution:
	def numberOfSubstrings(self, s: str) -> int:
	counts = Counter(s)
	ans = 0
	
	for v in counts.values():
		ans += (v * (v+1)) // 2
	
	return ans
```


