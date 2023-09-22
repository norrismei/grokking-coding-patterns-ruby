# Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

# Example 1:
# Input: nums= [1, 2, 3, 4]
# Output: false  
# Explanation: There are no duplicates in the given array.

# Example 2:
# Input: nums= [1, 2, 3, 1]
# Output: true  
# Explanation: '1' is repeating.


# Approach 1: Brute Force (very slow)
# Time complexity: O(n^2) - nested loop
# Space complexity: O(1)
def contains_duplicate(nums)
  nums.each_with_index do |num, i|
    (i+1...nums.length).each do |j|
      return true if num == nums[j]
    end
  end
end

# Approach 2: Using Hash Set
# Time complexity: O(n)
# Space complexity: O(n) - creating a new set
def contains_duplicate(nums)
  unique_set = Set.new
  nums.each do |num|
      return true if unique_set.include?(num)
      unique_set.add(num)
  end
  false
end

# Approach 3: Sorting
# Time complexity: O(nlogn) - sorting
# Space complexity: O(1) - sorting in place means nothing new is created
def contains_duplicate(nums)
  nums.sort!
  nums[0...-1].each_with_index do |num, i|
      return true if num == nums[i+1]
  end
  false
end