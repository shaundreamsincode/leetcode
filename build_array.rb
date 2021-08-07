# @param {Integer[]} nums
# @return {Integer[]}
def build_array(nums)
    answer = []
    
    nums.each_with_index do |num, index|
        answer[index] = nums[nums[index]]
    end
    
    answer
end
