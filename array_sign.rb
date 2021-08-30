# @param {Integer[]} nums
# @return {Integer}
def array_sign(nums)
    running_product = 1
    
    nums.each do |num|
        running_product = running_product * num
    end
    
    
    if running_product > 0
        1
    elsif running_product < 0
        -1
    else
        0
    end
end
