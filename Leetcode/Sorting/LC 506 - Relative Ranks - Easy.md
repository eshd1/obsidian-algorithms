- This question is a part of the Sorting family. 

```python
class Solution:
	def findRelativeRanks(self, score: List[int]) -> List[str]:
		sorted_score = sorted(score, reverse=True)
		mapping = {}
		
		for i, value in enumerate(sorted_score):
			mapping[value] = i+1
		
		empty = []
		for val in score:
			rank = mapping[val]
			empty.append((val, rank))
		
		res = []
		for tup in empty:
			if tup[1] == 1:
				res.append("Gold Medal")
			elif tup[1] == 2
				res.append("Silver Medal")
			elif tup[1] == 3:
				res.append("Bronze Medal")
			else:
				res.append(str(tup[1]))
		return res
```

- Sort in descending order, then map the order to the value using enumerate. Check the second value in the tuple and assign accordingly.