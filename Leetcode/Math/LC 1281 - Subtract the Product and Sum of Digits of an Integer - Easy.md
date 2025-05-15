- This question is part of the Math family 

```python
class Solution(object):
    def subtractProductAndSum(self, n):
        """
        :type n: int
        :rtype: int
        """
        prod_dig = 1
        sum_dig = 0

        list_ver = [int(i) for i in str(n)]

        for val in list_ver: 
            prod_dig *= val 
            sum_dig += val 

        return prod_dig - sum_dig
```

- This question is literally getting the product of the digits and sum of the digits and then returning the value. 