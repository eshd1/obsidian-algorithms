- This question is a harder [[Hashing]] type of question 

```python
from collections import defaultdict

class Solution:
    def minimumCardPickup(self, cards: List[int]) -> int:
        dic = defaultdict(list)
        for i in range(len(cards)):
            dic[cards[i]].append(i)
            
        ans = float("inf")
        for key in dic:
            arr = dic[key]
            for i in range(len(arr) - 1):
                ans = min(ans, arr[i + 1] - arr[i] + 1)
        
        return ans if ans < float("inf") else -1
```

- This problem asks you to find the **minimum number of consecutive cards** you need to pick from a list in order to get a pair of **matching cards**, where two cards match if they have the same value. To solve it efficiently, you need to look for the shortest subarray that contains at least two of the same number. A brute-force approach comparing all possible pairs would be too slow, so a better strategy is to use a dictionary to track the indices of each card value as they appear. For each value that appears more than once, you compute the distance between each pair of consecutive indices, since those define the smallest windows containing matching cards. The size of such a window is given by the difference between the indices plus one (to make it inclusive). You then track the smallest of these distances across all values. If no value appears more than once, it means no matching pair exists, so you return -1. The challenge lies in recognizing that you’re not just looking for any pair of matching cards—but the **closest** such pair, which is where efficient tracking and understanding of subarray sizes comes in.