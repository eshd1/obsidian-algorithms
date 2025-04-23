- This question is really dumb and requires using an algorithm called “Sieve of Eratosthenes”

```python
class Solution:
	def countPrimes(self, n: int) -> int:		
		if n < 2:
			return 0
			
		prime = [True] * n
		# first two 0, 1 are not prime
		prime[0] = False
		prime[1] = False
		# start from 2
		
		p = 2
		while p<sqrt(n):
			if prime[p]:
				for i in range(p*p, n, p):
					prime[i] = False
			p+=1

		return sum(prime)
```

- This algorithm - basically is a concise way to get primes up to a certain number. If n<2 then return 0. Otherwise create a list up till n-1 with True and set 0 and 1 to False. Then till p < sqrt(n). we check if prime[p] is True. Then we iterate through all multiples of that prime in range (p * p), till n, of p increments. We don’t do 2p cause p * p basically doesn’t recheck past primes. Increment p+=1. 
- Return sum(prime). Sum of all True values. 