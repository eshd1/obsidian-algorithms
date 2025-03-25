- This question is using the same concept as [[Two Pointers]] 

```python
class Solution:
    def reverseString(self, s: List[str]) -> None:
        """
        Do not return anything, modify s in-place instead.
        """
        left = 0 
        right = len(s) - 1

        while left < right: 
            temp1 = ""
            temp2 = ""
            temp1, temp2 = s[left], s[right]  
            s[left], s[right] = temp2, temp1
            left += 1
            right -= 1
```

- For this question we must modify in place instead of using inbuilt functions like s.reverse() as that is obviously trivial. To do so we can use two pointers to point towards a left and right endpoint and then have two temp variables to swap each of the characters at that mark. 