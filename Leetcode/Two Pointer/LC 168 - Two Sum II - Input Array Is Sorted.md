- This question is part of the [[Two Pointers]] family 

```python 
class Solution:
	def twoSum(self, numbers: List[int], target: int) -> List[int]:
		left = 0
		right = len(numbers)-1
		
		while left <= right:
			if (numbers[left] + numbers[right]) == target:
				return [left+1, right+1]

			elif (numbers[left] + numbers[right]) < target:
				left += 1
				
			else:
				right -= 1
		
		return [left+1, right+1]
```

- We use the two pointer approach to set a pointer at either end. We then check if numbers[left] + numbers[right] == target if it does return [left+1, right+1]. We have to do it this way because it is 1-indexed instead of zero indexed. 
- Otherwise if it is less than the target or greater than target do standard procedure and increment or decrement the pointers. 