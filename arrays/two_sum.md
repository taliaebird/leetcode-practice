
## Two Sum

**Problem:**
Given an array of integers `nums` and an integer `target`, return indices of the two numbers such that they add up to `target`.

**Approach:** 
✔️ Use a hashmap to store each number and its index.  
→ For each number, check if the complement exists in the hashmap.   

⭐ If found, return both indices. 

**Time Complexity:** O(n)
**Space Complexity:** O(n)

**Why It's Optimal:**

• Single pass through the array — no nested loops.   
• Fast lookup with the hashmap. 🎀  

**Example:**  
Input: `nums = [2, 7, 11, 15]`, `target = 9`  
Output: `[0, 1]` _(2 + 7 = 9)_