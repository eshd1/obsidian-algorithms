- This problem is another example problem using the [[Two Pointers]] method
- This one is a little more complicated then most of the other two pointers, as it requires us to go backwards to make sure the largest square in the array is at the end. Additionally, since we can have - or positive values we use a left and right pointer to see which is the larger value and **increment or decrement** pointers from there. 

```python 
class Solution:
    def sortedSquares(self, nums: List[int]) -> List[int]:
        n = len(nums)
        result = [0] * n
        left = 0
        right = n - 1

        for i in range(n-1, -1, -1): 
            if abs(nums[left]) < abs(nums[right]): 
                square = nums[right]
                right -= 1
            else: 
                square = nums[left]
                left += 1
            result[i] = square ** 2
        return result
```

- As you can notice this is O(n) but the only very interesting part of this problem is the for loop. Which loops backward starting at the last index. 
