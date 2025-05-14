- This question is part of [[Introduction - Arrays and Strings]]

```python
class Solution(object):
    def sortTheStudents(self, score, k):
        """
        :type score: List[List[int]]
        :type k: int
        :rtype: List[List[int]]
        """
        return sorted(score, key=lambda row: row[k], reverse=True)
```

- Simply use a lambda function to reorder the rows. 