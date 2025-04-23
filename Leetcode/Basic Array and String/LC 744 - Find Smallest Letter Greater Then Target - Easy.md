- This question is part of [[Algorithms/Arrays and Strings/Introduction - Arrays and Strings]]

```python
class Solution:
	def nextGreatestLetter(self, letters: List[str], target: str) -> str:
		sorted_letters = sorted(letters)
		for c in sorted_letters:
			if c > target:
				return c
		
		return letters[0]
```

- This question is straightforward, sort the list lexicographically. Then check every char in the sorted list and check if any c is greater then the target return that other wise return the first letter of the unsorted list