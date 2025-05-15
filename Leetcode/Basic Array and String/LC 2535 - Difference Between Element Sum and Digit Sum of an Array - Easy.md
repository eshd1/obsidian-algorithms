- This question is part of [[Introduction - Arrays and Strings]]

```python
class Solution(object):
    def differenceOfSum(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        element = sum(nums)

        digit = 0 
        for num in nums: 
            digit += sum([int(i) for i in str(num)])

        return abs(element - digit)
```

- Element is the sum of all values in the list, and for digit we add up every digit in the list, then return the absolute value of the difference. 