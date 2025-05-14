- This question is part of Math group

```python
class Solution:
    def minPartitions(self, n: str) -> int:
        l = [int(v) for v in n]
        return max(l)

```

- We use a simple technique as we notice that since its decibinary we need a minimum number of 1s that is equal to the max digit in the number. That way we can get our value. 