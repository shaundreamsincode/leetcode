# @param {Integer} num
# @return {Boolean}

def is_perfect_square(num)
    return true if num === 1
    left_pointer = 2
    right_pointer = num
    
    while left_pointer <= right_pointer do
        mid_pointer = (left_pointer + right_pointer) / 2
        
        if mid_pointer * mid_pointer === num
            return true
        elsif mid_pointer * mid_pointer > num
            # the mid pointer is too high.  move the right pointer
            right_pointer = mid_pointer - 1
        else # mid_pointer * mid_pointer < num
            left_pointer = mid_pointer + 1
        end
    end
    
    false
end
