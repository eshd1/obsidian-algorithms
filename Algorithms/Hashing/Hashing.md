- In the most basic terms, a data structure is a format for organizing data in an efficient way. In practical terms, we can split data structures into two things: the interface and the implementation.
- A hash function is a function that takes an input and deterministically converts it to an integer that is less than a fixed size set by the programmer. Inputs are called **keys** and the same input will always be converted to the same integer.

**What is the point of a hash function?**
- We know that arrays have O(1) random access. Given an arbitrary index, we can access and update its value in the array in constant time. The main constraint with arrays is that they are a fixed size, and the indices have to be integers. Because hash functions can convert any input into an integer, we can effectively remove the constraint of indices needing to be integers. When a hash function is combined with an array, it creates a **hash map**, also known as a **hash table** or **dictionary**
- With arrays, we **map** indices to values. With hash maps, we map **keys** to values, and a key can be almost anything. Typically, the only constraint on a hash map's key is that it has to be **immutable** (this is language dependent but generally a good rule of thumb). Values can be anything.

**Runtime comparison with Arrays**
- In terms of time complexity, hash maps blow arrays out of the water. The following operations are all O(1) for a hash map:
	- Add an element and associate it with a value
	- Delete an element if it exists
	- Check if an element exists

- A hash map also has many of the same useful properties as an array with the same time complexity:
	- Find length/number of elements
	- Updating values
	- Iterate over elements

**Checking for Existence**
- One of the most common applications of a hash table or set is determining if an element exists in O(1)

**Example 1 - LC 1 Two Sum**
Given an array of integers `nums` and an integer `target`, return indices of two numbers such that they add up to `target`. You cannot use the same index twice.

```python
class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        dic = {}
        for i in range(len(nums)):
            num = nums[i]
            complement = target - num
            if complement in dic: # This operation is O(1)!
                return [i, dic[complement]]
            
            dic[num] = i
        
        return [-1, -1]
```

**Example 2 - LC 2351 First Letter to Appear Twice**
Given a string `s`, return the first character to appear twice. It is guaranteed that the input will have a duplicate character.

```python
class Solution:
    def repeatedCharacter(self, s: str) -> str:
        seen = set()
        for c in s:
            if c in seen:
                return c
            seen.add(c)

        return " "
```

**Counting**
- Counting is a very common pattern with hash maps. By "counting", we are referring to tracking the frequency of things. This means our hash map will be mapping keys to integers. Anytime you need to count anything, think about using a hash map to do it.

**Example 1 - LC 340 Longest Substring With At Most K Distinct Chars**
You are given a string `s` and an integer `k`. Find the length of the longest substring that contains **at most** `k` distinct characters.

For example, given `s = "eceba"` and `k = 2`, return `3`. The longest substring with at most `2`distinct characters is `"ece"`.

```python 
from collections import defaultdict

def find_longest_substring(s, k):
    counts = defaultdict(int)
    left = ans = 0
    for right in range(len(s)):
        counts[s[right]] += 1
        while len(counts) > k:
            counts[s[left]] -= 1
            if counts[s[left]] == 0:
                del counts[s[left]]
            left += 1
        
        ans = max(ans, right - left + 1)
    
    return ans
```

- It should be noted that [[Sliding Window]] and [[Hashing]] can be utilized together. This problem is a good example of that. 

**Example 2 - LC 2248 Intersection of Multiple Arrays**
Given a 2D array `nums` that contains `n` arrays of distinct integers, return a sorted array containing all the numbers that appear in all `n` arrays.

For example, given `nums = [[3,1,2,4,5],[1,2,3,4],[3,4,5,6]]`, return `[3, 4]`. `3` and `4`are the only numbers that are in all arrays.

```python
from collections import defaultdict

class Solution:
    def intersection(self, nums: List[List[int]]) -> List[int]:
        counts = defaultdict(int)
        for arr in nums:
            for x in arr:
                counts[x] += 1

        n = len(nums)
        ans = []
        for key in counts:
            if counts[key] == n:
                ans.append(key)
        
        return sorted(ans)
```





**Leetcode Questions for Practice** 
- [[LC 1832 - Check if Sentence is Pangram - Easy]]
- [[LC 2225 - Find Players With Zero or One Losses - Medium]]
- [[LC 1426 - Counting Elements - Easy]]
- [[LC 268 - Missing Number - Easy]]
- [[LC 1133 - Largest Unique Number - Easy]]
- [[LC 1189 - Maximum Number of Balloons - Easy]]
- [[LC 2287 - Rearrange Characters to Make Target String - Easy]]
- [[LC 1941 - Check if All Characters Have Equal Number of Occurrences - Easy]]
- [[LC 560 - Subarray Sum Equals K - Medium]]
- [[LC 1248 - Count Number of Nice Subarrays - Medium]]
- [[LC 49 - Group Anagrams - Medium]]
- [[LC 2216 - Minimum Consecutive Cards to Pick Up - Medium]]
- [[LC 2342 - Max Sum of a Pair With Equal Sum of Digits - Medium]]
- [[LC 383 - Ransom Note - Easy]]
- [[LC 771 - Jewels and Stones - Easy]]
- [[LC 1436 - Destination City - Easy]]
- [[LC 3005 - Count Elements With Maximum Frequency - Easy]]
- [[LC 1394 - Find Lucky Integer in an Array - Easy]]
- [[LC 1207 - Unique Number of Occurrences - Easy]]
- [[LC 451 - Sort Characters By Frequency - Medium]]
- [[LC 1636 - Sort Array by Increasing Frequency - Easy]]
- [[LC 930 - Binary Subarrays with Sums - Medium]]
- [[LC 2958 - Length of Longest Subarray With at Most K Frequency - Medium]]
- [[LC 290 - Word Pattern - Easy]]
- [[LC 205 - Isomorphic Strings - Easy]]
- [[LC 890 - Find and Replace Pattern - Medium]]









