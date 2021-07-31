# https://leetcode.com/problems/two-sum
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    hash = {}
        
    nums.each_with_index do |num, index|
        diff = target - num
        
        if hash[diff]
            return [index, hash[diff]]
        else
            hash[num] = index
        end
    end    
end
