# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}

def search_insert(nums, target)
    left_pointer = 0
    right_pointer = nums.length - 1
    middle_pointer = nil
    
    while left_pointer <= right_pointer do
        middle_pointer = ((left_pointer + right_pointer).to_f / 2).floor
        middle_value = nums[middle_pointer]

        if target > middle_value
            left_pointer = middle_pointer + 1
            return left_pointer if left_pointer > right_pointer
        elsif target < middle_value
            right_pointer = middle_pointer - 1
            return middle_pointer if left_pointer > right_pointer
        else
            return middle_pointer
        end
    end
end
