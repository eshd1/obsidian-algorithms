- This question is a part of the [[Prefix Sum]] question family. 
- For this question every “left section” vs “right section” the left must be greater then right increment ans += 1

```python
class Solution:
    def waysToSplitArray(self, nums: List[int]) -> int:
        ans = left_section = 0
        total = sum(nums)

        for i in range(len(nums) - 1):
            left_section += nums[i]
            right_section = total - left_section
            if left_section >= right_section:
                ans += 1

        return ans
```

- Mathematically the right section is the total - left so if the left is greater then right increment the counter by 1 and return it.