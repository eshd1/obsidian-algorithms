- This question is another pretty hard [[Hashing]] problem. 

```python 
from collections import defaultdict

class Solution:
    def maximumSum(self, nums: List[int]) -> int:
        def get_digit_sum(num):
            digit_sum = 0
            while num:
                digit_sum += num % 10
                num //= 10
            
            return digit_sum
        
        dic = defaultdict(int)
        ans = -1
        for num in nums:
            digit_sum = get_digit_sum(num)
            if digit_sum in dic:
                ans = max(ans, num + dic[digit_sum])
            dic[digit_sum] = max(dic[digit_sum], num)

        return ans
```

- This problem requires finding the maximum possible sum of two numbers in an array that share the same digit sum. The **digit sum** of a number is the sum of its individual digits, and the goal is to pair numbers with identical digit sums and return the **largest sum** of such a pair. To solve this efficiently, we use a hash map (dictionary) to group numbers by their digit sums. As we iterate through the array, we compute the digit sum for each number. If another number with the same digit sum has already been seen, we compute the sum of the current number and the largest previously seen number with that digit sum. We update our answer with the maximum of all such sums. At the same time, we update the dictionary to ensure it always holds the largest number encountered for each digit sum. If no two numbers have the same digit sum, the answer remains -1. This approach ensures the solution runs in linear time relative to the size of the input array.