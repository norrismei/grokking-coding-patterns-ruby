
# Given two strings s and t, return true if t is an anagram of s, and false otherwise.

# Example 1:

# Input: s = "listen", t = "silent"
# Output: true
# Example 2:

# Input: s = "rat", t = "car"
# Output: false
# Example 3:

# Input: s = "hello", t = "world"
# Output: false


# Approach 1: Frequency hash map
# Time complexity: O(n) - iterates through each string once
# Space complexity: O(1) - hash map has max of 26 keys
def is_anagram(s, t)
  return false if s.length != t.length
  chars = {}
  s.each_char do |char|
      chars[char] ||= 0
      chars[char] += 1
  end
  t.each_char do |char|
      return false if chars[char] == 0 || chars[char] == nil
      chars[char] -= 1
  end
  true
end

# Approach 2: Sort
# In Ruby, you can't sort a string, so you have to convert it to an array first. Sort the array and then join it back into a string.
# Time complexity: O(nlogn) - sorting
# Space complexity: O(n) - creating new arrays
def is_anagram(s, t)
  return s.chars.sort.join == t.chars.sort.join
end