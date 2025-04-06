- This question is very similar to [[LC 290 - Word Pattern - Easy]] and [[LC 205 - Isomorphic Strings - Easy]]. It is also part of the [[Hashing]] family of questions. 

```python
class Solution:
	def findAndReplacePattern(self, words: List[str], pattern: str) -> List[str]:
		res = []
		for word in words:
			map_word = {}
			map_pattern = {}
			check = True
		
			if len(pattern) != len(word):
				check = False
		  
			for w, p in zip(word, pattern):
				if w in map_word:
					if map_word[w] != p:
						check = False
				else:
					if p in map_pattern:
						check = False
				map_word[w] = p
				map_pattern[p] = w
		
			if check == True:
				res.append(word)
			else:
				pass
		
		return res
```

- This is the same as Isomorphic strings but instead we iterate through the list. Instead of returning True we keep a flag that handles that for us. -
- Here is a recap summary: 
	- To solve the _Isomorphic Strings_ problem, you need to check whether there is a **one-to-one mapping** (bijection) between the characters in the pattern string and the words in the input string s. First, split the string s into a list of words. If the number of characters in the pattern doesn’t match the number of words, return False immediately since a one-to-one mapping is impossible. Then, use two dictionaries to track the mapping: one from pattern characters to words, and another from words to pattern characters. Iterate through both the pattern and the word list simultaneously using zip(). For each character–word pair, check if the character has already been mapped to a word, and if so, verify the mapping is consistent. Also ensure that no two characters map to the same word by checking the reverse mapping. If you find any inconsistencies, return False. If you reach the end without issues, the pattern is followed correctly, so return True. This ensures both injectivity (no two characters map to the same word) and surjectivity (no two words map to the same character), satisfying the bijection requirement.