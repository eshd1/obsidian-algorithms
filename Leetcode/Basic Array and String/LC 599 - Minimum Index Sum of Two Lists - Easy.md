- This question is part of [[Introduction - Arrays and Strings]]

```python
class Solution(object):
	def findRestaurant(self, list1, list2):
		"""		
		:type list1: List[str]
		:type list2: List[str]
		:rtype: List[str]
		"""
		common = []
		
		for i in range(len(list1)):
			for j in range(len(list2)):
				if list1[i] == list2[j]:
					common.append((i+j, list1[i]))

		sort = sorted(common)
		values = []
		empty = []

		for tup in sort:
			values.append(tup[0])
			
		minimum = min(values)
		for tup in sort:
			if tup[0] == minimum:		
				empty.append(tup[1])
		
		return empty
	```

- Scuffed solution can be made better with enumerate and hashing. Append i+j and value if in both lists. Then get the minimum value, and then append the words with the minimum value. 