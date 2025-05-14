- This question is part of [[Hashing]]

```python
from collections import Counter
class Solution(object):
	def findIntersectionValues(self, nums1, nums2):
		"""
		:type nums1: List[int]
		:type nums2: List[int]
		:rtype: List[int]
		"""
		
		count1 = Counter(nums1)
		count2 = Counter(nums2)
		answer1 = 0
		answer2 = 0
		
		for k, v in count1.items():
			if k in count2:
				answer1 += count1[k]
		
		for k, v in count2.items():
			if k in count1:
				answer2 += count2[k]
		
		return [answer1, answer2]
```

- Create two counters, and then add the value to the answers when iterating through. Return [answer1, answer2]

