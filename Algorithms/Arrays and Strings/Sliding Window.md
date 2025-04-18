
- **Sliding Window** is another common approach to solving problems related to arrays. A sliding window is actually implemented using [[Two Pointers]]. However, this topic is heavily dependent on **subarrays**. 
	- Given an array a subarray is a contiguous section of the array.
- A subarray can be defined by two indices, the start and the end. Lets call the starting index the left bound and ending index the right bound. Another name for the subarray in this context is **window**. 

**When to use sliding window?**
- First the problem will either explicitly or implicitly define criteria that make a subarray **valid**. There are two components regarding what makes a subarray valid. 
	- **A constraint metric**: This is some attribute of a subarray. It could be the sum, the number of unique elements, the frequency of a specific element, or any other attribute. 
	- **A numeric restriction on the constraint metric**: This is what the constraint metric should be for a subarray to be considered valid. 
- **Secondly** the problem will ask you to find valid subarrays in some way. 
	- The most common task you will see is finding the best valid subarray. The problem will define what makes a subarray better than another. 
	- Another common task is finding the number of valid subarray. 

**The Algorithm** 
- The idea behind a sliding window is to consider only valid subarrays. Recall that a subarray can be defined by a left bound and right bound. In sliding window, we maintain two variables left and right, which at any given time represent the **current subarray** under consideration. 
- We can expand or shrink our window by incrementing or decrementing our endpoints **left and right**. 
- **In order for sliding window to work we need to identify the constraint metric**. 

```python
function fn(nums, k):
    left = 0
    curr = 0
    answer = 0
    for (int right = 0; right < nums.length; right++):
        curr += nums[right]
        while (curr > k):
            curr -= nums[left]
            left++

        answer = max(answer, right - left + 1)

    return answer
```

**Example 1**: 
Given an array of positive integers `nums` and an integer `k`, find the length of the longest subarray whose sum is less than or equal to `k`.

```python 
def find_length(nums, k):
    # curr is the current sum of the window
    left = curr = ans = 0
    for right in range(len(nums)):
        curr += nums[right]
        while curr > k:
            curr -= nums[left]
            left += 1
        ans = max(ans, right - left + 1)
    
    return ans
```

**Example 2**
You are given a binary string `s` (a string containing only `"0"` and `"1"`). You may choose up to one `"0"` and flip it to a `"1"`. What is the length of the longest substring achievable that contains only `"1"`?

For example, given `s = "1101100111"`, the answer is `5`. If you perform the flip at index `2`, the string becomes `1111100111`.

Because the string can only contain `"1"` and `"0"`, another way to look at this problem is "what is the longest substring that contains **at most one** `"0"`?". This makes it easy for us to solve with a sliding window where our condition is `window.count("0") <= 1`. We can use an integer `curr` that keeps track of how many `"0"`we currently have in our window.

```python
def find_length(s):
    # curr is the current number of zeros in the window
    left = curr = ans = 0 
    for right in range(len(s)):
        if s[right] == "0":
            curr += 1
        while curr > 1:
            if s[left] == "0":
                curr -= 1
            left += 1
        ans = max(ans, right - left + 1)
    
    return ans
```

- However it should be noted that sliding window can also be done with **fixed window size**. 

```python
function fn(arr, k):
    curr = some data to track the window

    // build the first window
    for (int i = 0; i < k; i++)
        Do something with curr or other variables to build first window

    ans = answer variable, probably equal to curr here depending on the problem
    for (int i = k; i < arr.length; i++)
        Add arr[i] to window
        Remove arr[i - k] from window
        Update ans

    return ans
```

**Example 4**
Given an integer array `nums` and an integer `k`, find the sum of the subarray with the largest sum whose length is `k`.

```python
def find_best_subarray(nums, k):
    curr = 0
    for i in range(k):
        curr += nums[i]
    
    ans = curr
    for i in range(k, len(nums)):
        curr += nums[i] - nums[i - k]
        ans = max(ans, curr)
    
    return ans
```

- This is where we are given a set size of the array such as k 




**Example Leetcode Problems**
- [[LC 713 - Subarray Product Less Than K - Easy]] - Example 3 
- [[LC 643 -  Maximum Average Subarray I - Medium]]
- [[LC 1004 - Max Consecutive Ones III - Medium]]
- [[LC 487 - Max Consecutive Ones II - Medium]]
- [[LC 485 - Max Consecutive Ones - Easy]]
- [[LC 2302 - Count Subarrays With Score Less Than K - Hard]]
- [[LC 3 - Longest Substring Without Repeating Characters - Medium]]
- [[LC 3258 - Count Substrings That Satisfy K-Constraint I - Easy]]
- [[LC 209 - Minimum Size Subarray Sum - Medium]]
- [[LC 1208 - Get Equal Substrings Within Budget - Medium]]
