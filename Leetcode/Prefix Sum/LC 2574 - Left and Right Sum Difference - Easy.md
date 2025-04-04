- This question is a part of the [[Prefix Sum]]
- This question is very similar to [[LC 724 - Find Pivot Index & LC 1991 - Find the Middle Index in Array - Easy]]

```python 
class Solution:

	def leftRightDifference(self, nums: List[int]) -> List[int]:
	res = []
	left = current = 0
	total = sum(nums)
	
	for i in range(len(nums)):
		right = total - left
		left += nums[i]
		res.append(abs(left - right))
	return res
```

- For this question we have to add the abs of left and right at every index to an empty array. Like the other questions we check left after right. 

