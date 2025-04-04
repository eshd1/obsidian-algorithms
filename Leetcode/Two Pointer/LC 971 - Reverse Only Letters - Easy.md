- This question is part of the [[Two Pointers]] family. 
- We are given a string with letters and other characters, we want to reverse only the letters. 

```python
class Solution:

	def reverseOnlyLetters(self, s: str) -> str:
		s = list(s)
		left = 0
		right = len(s)-1
	
		while left < right:
			if (s[left].isalpha()==True) and (s[right].isalpha() == False):
				right -=1
				
			elif (s[left].isalpha()==False) and (s[right].isalpha() == True):
				left += 1
				
			elif (s[left].isalpha()==True) and (s[right].isalpha() == True):
				s[left], s[right] = s[right], s[left]
				left+=1
				right-=1
			
			else:
				left+=1
				right -=1
		
		return "".join(s)
```

- As one can see we need to check for 3 conditions for both of the pointers. IF one or the other is a letter and the other is a special character then we need to increase only one pointer to find the next letter, if the both pointers are letters then we can swap. 
