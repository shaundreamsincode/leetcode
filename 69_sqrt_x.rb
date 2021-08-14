# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
    return 0 if x === 0
    return 1 if x === 1 || x === 2
    
    left_pointer = 2
    right_pointer = x
    
    while left_pointer <= right_pointer do
        middle_pointer = (left_pointer + right_pointer) / 2
        num = middle_pointer * middle_pointer
        
        if num === x
            return middle_pointer
        elsif num > x
            right_pointer = middle_pointer - 1
        else # num < x
            left_pointer = middle_pointer + 1
        end
    end

    right_pointer
end
