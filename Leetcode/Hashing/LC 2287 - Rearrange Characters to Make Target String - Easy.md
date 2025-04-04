- This question is part of the [[Hashing]] section. 
- It is practically the same as [[LC 1189 - Maximum Number of Balloons - Easy]]

```python
class Solution:
	def rearrangeCharacters(self, s: str, target: str) -> int:
		hashmap = Counter()
		target_count = Counter(target)
		min_v = float('inf')
		
		for char in target:
			hashmap[char] = 0
			
		for char in s:
			if char in target:
				hashmap[char] += 1
		
		for char in target_count:
			min_v = min(min_v, hashmap[char]//target_count[char])
	
	return min_v
```

- Like LC 1189 - this one also has a target however the target can be any string. We store the count of the target and the string. Then we get the minimum number by dividing the number of chars found in input string vs target string. 