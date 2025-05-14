- This question is part of [[Hashing]]

```python
from collections import defaultdict
class Solution(object):
    def sortByBits(self, arr):
        """
        :type arr: List[int]
        :rtype: List[int]
        """
        binary = defaultdict(list)
        res = []
        for num in arr: 
            val = bin(num)[2:]
            counter = 0
            for c in str(val): 
                if c=="1": 
                    counter +=1
            binary[counter].append(num)

        sorted_bin = dict(sorted(binary.items()))
        for k, v in sorted_bin.items(): 
            if len(v) > 1: 
                v = sorted(v)
            res.extend(v)
        return res
```

- This question is a little tricky for an easy. We first create a default dict that stores lists as values. Then we go through adding the values to the counter of 1s in the binary representation. From there we sort the dict by its keys. If the len of the list is larger then 1. Then we sort that list first, and then extend it. 