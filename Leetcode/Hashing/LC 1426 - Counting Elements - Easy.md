- This question technically falls under the [[Hashing]] family of questions but in reality is much easily solved in another way

```python
class Solution:
    def countElements(self, arr: List[int]) -> int:
        count = 0
        for i in range(len(arr)):
            if arr[i] + 1 in arr: 
                count += 1
            else: 
                pass
        return count
```

- Simply check if arr[i] + 1 is in the list and then increment the counter. 

