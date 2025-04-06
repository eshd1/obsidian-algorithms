- This question is part of the [[Hashing]] family of questions. 

```python
class Solution:
	def wordPattern(self, pattern: str, s: str) -> bool:
		s = s.split()
		map_p = {}
		map_s = {}
		
		if len(pattern) != len(s):
			return False
		
		for p, s in zip(pattern, s):
			if p in map_p:
				if map_p[p] != s:
					return False
			
			else:
				if s in map_s:
					return False
			map_p[p] = s
			map_s[s] = p
		
		return True
```

- To solve the _Word Pattern_ problem, you need to check whether there is a **one-to-one mapping** (bijection) between the characters in the pattern string and the words in the input string s. First, split the string s into a list of words. If the number of characters in the pattern doesn’t match the number of words, return False immediately since a one-to-one mapping is impossible. Then, use two dictionaries to track the mapping: one from pattern characters to words, and another from words to pattern characters. Iterate through both the pattern and the word list simultaneously using zip(). For each character–word pair, check if the character has already been mapped to a word, and if so, verify the mapping is consistent. Also ensure that no two characters map to the same word by checking the reverse mapping. If you find any inconsistencies, return False. If you reach the end without issues, the pattern is followed correctly, so return True. This ensures both injectivity (no two characters map to the same word) and surjectivity (no two words map to the same character), satisfying the bijection requirement.
