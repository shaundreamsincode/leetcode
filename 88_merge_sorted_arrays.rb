def merge(nums1, m, nums2, n)
    if m === 0
        nums1.each_with_index do |num, i|
            nums1[i] = nums2[i]
        end
        
        return
    end
    
    p1 = m - 1
    p2 = n - 1
    insert_index = m + n - 1
    
    while p1 >= 0 && p2 >= 0 do
        p1_val = nums1[p1]
        p2_val = nums2[p2]
        
        if p1_val > p2_val
            nums1[insert_index] = p1_val
            p1 -= 1
        else
            nums1[insert_index] = p2_val
            p2 -= 1
        end
        # ...
        insert_index += -1
    end
    
    while p1 >= 0 do
        nums1[insert_index] = nums1[p1]
        p1 -= 1
        insert_index -= 1
    end
    
    while p2 >= 0 do
        nums1[insert_index] = nums2[p2]
        p2 -= 1
        insert_index -= 1
    end
end
