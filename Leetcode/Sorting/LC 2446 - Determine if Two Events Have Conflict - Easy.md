- This question is part of the Sorting family. 


```python
class Solution(object):
    def haveConflict(self, event1, event2):
        """
        :type event1: List[str]
        :type event2: List[str]
        :rtype: bool
        """
        
        check = [event1, event2]
        check.sort(key=lambda x: x[0])

        if check[0][1] >= check[1][0]: 
            return True
        else:
            return False
```

- Simply append to the list then sort using a lambda function. Then just string match to check if index 1 is larger then index 0 of the other list.