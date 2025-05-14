- This question is part of [[Hashing]]

```python
from collections import Counter
class Solution(object):
	def frequenciesOfElements(self, head):
		"""
		:type head: Optional[ListNode]
		:rtype: Optional[ListNode]
		"""
		count = Counter()
		current = head
		
		while current:
			count[current.val] += 1
			current = current.next
		
		frequency = list(count.values())
		dummy = ListNode(0)
		new = dummy

		for val in frequency:
			new.next = ListNode(val)
			new = new.next
			
		return dummy.next
```

- For this question, we create a Counter, then we go through each value and do += 1. Then we create a new linked list using the class definition. 
