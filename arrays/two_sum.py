
class Solution(object):
    
    def two_sum(self, nums, target):
        """
        ~ Concise solution ~

        :type nums: List[int]
        :type target: int
        :rtype: List[int]
        """
        hashmap = {}
        for i, num in enumerate(nums):
            complement = target - num
            if complement in hashmap:
                return [hashmap[complement], i]
            hashmap[num] = i
        return []

    def two_sum_explained(self, nums, target):
        """
        ~ Same logic with comments ~

        :type nums: List[int]
        :type target: int
        :rtype: List[int]
        """
        # Create hashmap {num : index}
        hashmap = {}

        # Iterate through nums array
        for i, num in enumerate(nums):

            # Value that would sum to target
            complement = target - num
            
            # If complement exists, solution!
            if complement in hashmap:

                # Returns complement index and current index
                return [hashmap[complement], i]

            # Saves num and index
            hashmap[num] = i
        
        # No solution :(
        return []

    