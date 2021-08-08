# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
    index = head
    seen_nodes = {}
    
    while !index.nil? do
        if seen_nodes[index]
            return true
        else
            seen_nodes[index] = true
            index = index.next
        end
    end
    
    false
end
