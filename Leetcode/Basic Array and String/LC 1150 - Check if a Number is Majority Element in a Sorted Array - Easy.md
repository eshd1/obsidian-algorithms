- This question is part of [[Algorithms/Arrays and Strings/Introduction - Arrays and Strings]]

```python 
class Solution:
	def isMajorityElement(self, nums: List[int], target: int) -> bool:
		check = len(nums) // 2
		counter = nums.count(target)
	
		if counter > check:
			return True
	
		return False
```

- Get the length of the list and then divide by 2 to get the checkpoint. Then use the .count method to count how many times target is in nums. 
- Return True if counter is greater then check or return False. 
