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

```