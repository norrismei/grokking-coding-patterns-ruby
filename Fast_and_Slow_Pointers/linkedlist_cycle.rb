# Given the head of a Singly LinkedList, write a function to determine if the LinkedList has a cycle in it or not.

# Time Complexity: O(n) - iterate through each node once until fast pointer gets to end
# Space Complexity: O(1) - only storing a few variables

def hasCycle(head)
  return false if head == nil || head.next == nil

  slow, fast = head, head

  while fast != nil && fast.next != nil
      fast = fast.next.next
      slow = slow.next
      if fast == slow
          return true
      end
  end

  false
end