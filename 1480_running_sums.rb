# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
    return nums[0] if nums.length === 1
    
    (1..nums.length-1).each do |i|
        nums[i] = nums[i] + nums[i-1]
    end
    
    nums
end
