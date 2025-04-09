- This question falls under the [[Hashing]] and [[Sliding Window]] umbrella. 
- It is also pretty similar to [[LC 567 - Permutation in String - Medium]]

```python 
from collections import Counter
class Solution:
	def findAnagrams(self, s: str, p: str) -> List[int]:
		len1, len2 = len(s), len(p)
		res = []
		window = Counter(s[:len2])
		count = Counter(p)
		if window == count:
			res.append(0)
		
		for i in range(len2, len1):
			window[s[i-len2]] -= 1
			window[s[i]] += 1
			
			if window[s[i-len2]] == 0:
				del window[s[i-len2]]
			
			if window == count:
				res.append(i - len2 + 1)
		
		return res
```

- To solve the problem of finding all anagrams of a string p within another string s, you can use the sliding window technique along with frequency counting. The idea is to maintain a window of size equal to the length of p and slide it across s, checking at each step whether the characters in the current window form an anagram of p. To do this efficiently, you first calculate the frequency of characters in p using a Counter. Then, you initialize a window Counter for the first len(p) characters in s and check if it matches p’s frequency map. As you slide the window forward one character at a time, you update the window by removing the leftmost character and adding the new rightmost character, adjusting the frequencies accordingly. If at any point the window’s character counts match those of p, the starting index of that window is added to the result. This approach avoids generating all permutations explicitly and efficiently finds all valid anagram substrings in linear time relative to the length of s.