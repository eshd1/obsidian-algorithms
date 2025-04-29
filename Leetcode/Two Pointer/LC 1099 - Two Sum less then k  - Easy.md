
- This question is part of the [[Two Pointers]] family of questions

```python
class Solution:
	def twoSumLessThanK(self, nums: List[int], k: int) -> int:
		sorted_l = sorted(nums)
		left = 0
		past = -1
		right = len(sorted_l) - 1

		while left < right:
			if (sorted_l[left]+sorted_l[right]) < k:
				past = max((sorted_l[left]+sorted_l[right]), past)
				left += 1
			else:
				right -= 1

		return past
```


- Simply use a two pointer approach, go until left < right. Then check if the sum of the two values from the sorted list are less then k if they are get the max between past and the sum, and increase left by 1. Otherwise decrement right. 