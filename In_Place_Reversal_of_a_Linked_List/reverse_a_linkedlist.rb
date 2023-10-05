# Given the head of a Singly LinkedList, reverse the LinkedList. Write a function to return the new head of the reversed LinkedList.

# Time Complexity: O(n) - iterate through each node once
# Space Complexity: O(1) - only storing a few variables

def reverse_list(head)
  return head if head == nil || head.next == nil

  prev, curr = nil, head

  while curr 
      next_curr = curr.next 
      curr.next = prev 
      prev = curr 
      curr = next_curr 
  end
  
  prev
end