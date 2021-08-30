# @param {Integer[]} nums
# @return {Integer}
def num_identical_pairs(nums)
    identical_pair_count = 0
    
    nums.length.times do |i|
        nums.length.times do |j|
            if nums[i] === nums[j] && i < j
                identical_pair_count += 1
            end
        end
    end
    
    identical_pair_count
end
