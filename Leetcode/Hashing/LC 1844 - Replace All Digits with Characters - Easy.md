- This question is part of [[Hashing]]

```python
from collections import defaultdict
class Solution(object):
    def replaceDigits(self, s):
        """
        :type s: str
        :rtype: str
        """ 
        l_ver = list(s)
        alphabet = "abcdefghijklmnopqrstuvwxyz"
        tracker = defaultdict(int)
        shift = []

        for i, char in enumerate(alphabet): 
            tracker[i+1] = char

        for i in range(len(l_ver)): 
            if l_ver[i].isdigit(): 
                value = ord(l_ver[i-1])-96
                new_value = tracker[value+int(l_ver[i])]
                shift.append(new_value)
            else: 
                shift.append(l_ver[i])
        
        shift = [str(s) for s in shift]
        return "".join(shift)
```

- This question is a little tricky because it involves getting the value of the letter before the int and then changing it to the character. We use a hashmap to store all the values of the alphabet as integers. 