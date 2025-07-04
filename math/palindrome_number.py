
class Solution(object):

    def is_palindrome(self, x):
        """
        ~ Concise solution ~

        :type x: int
        :rtype: bool
        """
        if x < 0 :
            return False
        num = x
        reverse = 0
        while num != 0:
            reverse = reverse * 10 + num % 10
            num = num // 10
        return x == reverse
    
    def is_palindrome_explained(self, x):
        """
        ~ Same logic with comments ~

        :type x: int
        :rtype: bool
        """
        # Negative numbers cannot be palindromes
        if x < 0 :
            return False

        num = x         # Copy of x
        reverse = 0     # Holds reversed number

        # Iterates through number to create a reverse of x
        while num != 0:
            # Shifts reverse and appends one's number digit
            reverse = reverse * 10 + num % 10

            # Removes one's digit from number
            num = num // 10

        # Returns if x matches its reverse
        return x == reverse


    