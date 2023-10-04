# Given a string s, return true if it is a palindrome, or false otherwise.

# Example 1:

# Input: sentence = "A man, a plan, a canal, Panama!"
# Output: true
# Explanation: "amanaplanacanalpanama" is a palindrome.
# Example 2:

# Input: sentence = "Was it a car or a cat I saw?"
# Output: true
# Explanation: Explanation: "wasitacaroracatisaw" is a palindrome.


# Approach 1: Two pointers
# Time complexity: O(n) - iterates through each string once
# Space complexity: 0(1) - only uses constant space to store a few variables
def is_palindrome(s)
  i, j = 0, s.length - 1

  while i < j
      while i < j && s[i].match?(/[^0-9a-zA-Z]/)
          i += 1
      end
      
      while j > i && s[j].match?(/[^0-9a-zA-Z]/)
          j -= 1
      end

      return false if s[i].downcase != s[j].downcase
      i += 1
      j -= 1
  end
  true
end