- This question is part of [[Introduction - Arrays and Strings]]

```python
from collections import defaultdict
class Solution(object):
	def anagramMappings(self, nums1, nums2):
		"""
		:type nums1: List[int]
		:type nums2: List[int]
		:rtype: List[int]
		"""
		ans = []

		for i in range(len(nums1)):
			idx = nums2.index(nums1[i])
			ans.append(idx)

		return ans
```

- This question is super simple - could have been harder depending on how they wanted us to handle duplicates but I guess we can submit any index of the duplicate. Thats why this simple code works, by just finding the first idx of the value. 