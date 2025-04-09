- This problem is a part of the [[Hashing]] family of questions

```python
from collections import Counter
class Solution:
	def closeStrings(self, word1: str, word2: str) -> bool:
		if len(word1) != len(word2):
			return False

		count1 = Counter(word1)
		count2 = Counter(word2)

		if set(count1.keys()) != set(count2.keys()):
			return False
		
		if sorted(count1.values()) != sorted(count2.values()):
			return False

		return True
```

- To solve the “close strings” problem, you need to determine if one string can be transformed into the other using two operations: swapping any two existing characters, and swapping the identities of all occurrences of two characters. These operations mean that the character positions don’t matter, but the structure of character usage does. Specifically, two conditions must be met for the strings to be “close”: first, both strings must contain exactly the same set of characters, since you can’t introduce or remove characters; second, the frequency distribution of characters must match, because you can reassign character identities but not change how many times a character occurs. To implement this, count the frequency of each character in both strings using a Counter, then check that both have the same set of keys (unique characters) and that their frequency values, when sorted, are equal. If both conditions hold, the strings are close; otherwise, they are not.