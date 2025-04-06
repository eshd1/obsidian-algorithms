- This question is part of the [[Hashing]] family of questions and quite literally the same as [[LC 560 - Subarray Sum Equals K - Medium]]

```python 
from collections import defaultdict

class Solution:
    def subarraySum(self, nums: List[int], k: int) -> int:
        counts = defaultdict(int)
        counts[0] = 1
        ans = curr = 0

        for num in nums:
            curr += num
            ans += counts[curr - k]
            counts[curr] += 1
    
        return ans
```

- We use `curr` to track the prefix sum.
- At any index `i`, the sum up to `i` is `curr`. If there is an index `j` whose prefix is `curr - k`, then the sum of the subarray with elements from `j + 1` to `i` is `curr - (curr - k) = k`. Refer - [[Prefix Sum]]
- Because the array can have negative numbers, the same prefix can occur multiple times. We use a hash map `counts` to track how many times a prefix has occurred.
- At every index `i`, the frequency of `curr - k` is equal to the number of subarrays whose sum is equal to `k` that end at `i`. Add it to the answer.