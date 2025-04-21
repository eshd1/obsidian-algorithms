- This question is part of [[Introduction - Arrays and Strings]]

```python
class Solution:
	def countElements(self, nums: List[int]) -> int:
		minv = min(nums)
		maxv = max(nums)
		counter = 0
		
		for num in nums:
			if minv < num and maxv > num:
				counter+=1
		
		return counter
```

- Create a min and max value holder and then check if all the elements are both less then the max and greater then the min. Increment the counter and return