- This question is a part of [[Introduction - Arrays and Strings]]

```python
class Solution(object):
    def minMovesToSeat(self, seats, students):
        """
        :type seats: List[int]
        :type students: List[int]
        :rtype: int
        """
        seats = sorted(seats)
        students = sorted(students)
        total = 0
        for i in range(len(seats)): 
            total+= abs(seats[i]-students[i])

        return total
```

- Simply sort both arrays and then keep adding the abs value of the two values subtracted at each idx. 
