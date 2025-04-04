- This question is part of the [[Prefix Sum]] family. 
```python
class Solution:
    def minStartValue(self, nums: List[int]) -> int:
        mins = sums = 0
        for val in nums: 
            sums += val
            mins = min(mins, sums)
        return 1 - mins
```

- Keep a running total increment sum with sum += val
- StartValue + min_sum ≥ 1 => StartValue ≥ 1 - min_sum

