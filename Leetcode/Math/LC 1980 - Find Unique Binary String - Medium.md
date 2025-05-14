- This is question is part of the [[Introduction - Arrays and Strings]]

```python
class Solution:
    def findDifferentBinaryString(self, nums: List[str]) -> str:
        n = len(nums)
        res = []
        for i in range(len(nums)): 
            if nums[i][i] == "0": 
                res.append("1")
            else: 
                res.append("0")
        
        return "".join(res)
```

- We use the Canton diagonalization, where we just reverse the value of the grid and return. 