def delete_duplicates(head)
    return head if head.nil?
    
    node_val_counts = Hash.new(0)
    current_node = head
    next_node = head.next
    
    while !current_node.nil? && !next_node.nil? do
        if current_node.val === next_node.val
            current_node.next = next_node.next
            next_node = current_node.next
        else
            current_node = current_node.next
            next_node = current_node.next
        end
        # if node_val_counts[current_node] > 0
        #     current_node.next = current_node.next.next
        # else
        #     node_val_counts[current_node.val] += 1
        # end
    end
    
    head
end
