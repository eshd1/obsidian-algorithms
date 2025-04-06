- This question is part of the [[Hashing]] family 

```python 
from collections import Counter
class Solution:
	def frequencySort(self, nums: List[int]) -> List[int]:
		count = Counter(nums)
		nums.sort(key=lambda x: (count[x], -x))
		
		return nums
```

- We can easily solve this by using a lambda function which sorts by frequencies and will put the larger number first if there is a tie. 

