- This is the same question as [[LC 1004 - Max Consecutive Ones III - Medium]] and is a part of the [[Sliding Window]] algorithm question. 

```python
class Solution: 
	def findMaxConsecutiveOnes(self, nums): 
		left = zeros = max_len = 0
		for right in range(len(nums)): 
			if nums[right] == 0: 
				zeros += 1
			while zeros > 1:  #this is k if we are given one
				if nums[left] == 0: 
					zeros -=1
				left += 1
			max_len = max(max_len, right-left+1)
		return max_len
```

- As you can see from the notes you just replace ‘k’ with 1 since we only have one swap for zero. 