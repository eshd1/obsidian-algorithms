- This question is part of the [[Hashing]] family

```python
from collections import defaultdict
class Solution(object):
    def highFive(self, items):
        """
        :type items: List[List[int]]
        :rtype: List[List[int]]
        """
        count = defaultdict(list)
        res = []
        for i, score in items: 
            count[i].append(score)
        
        for student in count: 
            sorted_score = sorted(count[student], reverse=True)
            top_5 = sorted_score[:5]
            avg = sum(top_5) // 5
            res.append([student, avg])

        return sorted(res, key=lambda x: x[0])
```

- We use a default dict of lists to store all scores, then we store the top 5 scores of each student, and get the average, then we append [id, avg], and sort using a lambda.