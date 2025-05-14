- This question is contained in [[Introduction - Arrays and Strings]]

```python
class Solution(object):
	def numberOfPairs(self, nums1, nums2, k):
		"""
		:type nums1: List[int]
		:type nums2: List[int]
		:type k: int
		:rtype: int
		"""
		counter = 0
		for i in range(len(nums1)):
			for j in range(len(nums2)):
				if nums1[i] % (nums2[j]*k)==0:
					counter += 1
		
		return counter
```

- This question is super simple we dont need any hashing like the question suggests, but rather we can just run two for loops an increment a counter if the conditions are ever met.