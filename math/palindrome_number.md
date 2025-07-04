
## Palindrome Number

**Problem:**
Given an integer `x`, return `true` if `x` is a palindrome, and false otherwise. 

**Approach:**   
✔️ If `x` is negative, it can't be a palindrome.
→ Otherwise, reverse the integer (digit by digit) without converting it to a string.   
⭐ If they match, palindrome!

**Time Complexity:** O(logn)  
**Space Complexity:** O(1)

**Why It's Optimal:**  
• No string conversion needed. 🍓
• Uses only math operations.

**Example:**  
Input: `x = 121`
Output: `TRUE` (reads the same backward: 121)
