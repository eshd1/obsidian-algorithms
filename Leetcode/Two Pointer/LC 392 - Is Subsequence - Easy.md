- This question is using the [[Two Pointers]] method.

```python
class Solution:
    def isSubsequence(self, s: str, t: str) -> bool:
        i = j = 0
        while i < len(s) and j < len(t):
            if s[i] == t[j]:
                i += 1
            j += 1

        return i == len(s)
```

- Very straightforward method, basically keep i has a counter and if s[i] == t[j] **increment** the counter for i, if i == len(s), we know that all 3 characters in that sequence are present in t. Which would return True else False. 