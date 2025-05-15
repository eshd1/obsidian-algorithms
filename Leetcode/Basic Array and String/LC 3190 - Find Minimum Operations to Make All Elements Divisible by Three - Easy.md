- This question is part of [[Introduction - Arrays and Strings]]

```python
class Solution(object):
    def minimumOperations(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        total = 0 
        for num in nums: 
            if num %3 != 0: 
                total += 1
        return total
```

- The mod of any number if not divisible by 3 is 1 or 2 so we can either add 1 to 2 or subtract 1 to make it divisible. 