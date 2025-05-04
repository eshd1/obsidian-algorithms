- This question is part of Linked Lists 

```python
class Solution:
	def toArray(self, head):
		"""
		:type head: Node
		:rtype: List[int]
		"""
		current = head
		res = []
		
		while current:
			res.append(current.val)
			current = current.next
		
		return res
```

- Very similar question to any normal linked lists. Then go through till the end of the list, and append the values to it. 