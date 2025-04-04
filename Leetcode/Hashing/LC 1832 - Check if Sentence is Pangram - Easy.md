- This question is part of the [[Hashing]] family 
- For this I used import string to make a dict of all the letters in the alphabet (makes life easier)

```python
import string
class Solution:
    def checkIfPangram(self, sentence: str) -> bool:
        alphabet_dict = {letter: 0 for letter in string.ascii_lowercase}
        
        for char in sentence: 
            alphabet_dict[char] += 1
        
        for v in alphabet_dict.values():
            if v == 0: 
                return False
        
        return True
```

- We check each char and add +1 if the character is present
- Then we go through the values of the dict and if any is 0 then we return false
