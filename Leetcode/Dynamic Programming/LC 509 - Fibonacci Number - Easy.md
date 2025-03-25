- The Fibonacci numbers, commonly denoted as F(n) form a sequence. 
- We know that **F(n) = F(n-1) + F(n-2)** for n > 1. 

```python
class Solution:
	def fib(self, n: int) -> int:
		if n <= 1:
			return n
		return self.fib(n-1) + self.fib(n-2)
```

To solve this we can simply use recursion to keep adding the values up until we reach the Nth value. As our base case we set n≤1 to stop the recursion. This is similar to [[LC 1137. N-th Tribonacci Number - Easy]] as it can be solved using **iterative dynamic programming**, but for this problem recursion works equally as fast
