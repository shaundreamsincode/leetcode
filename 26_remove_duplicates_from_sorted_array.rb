# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    hash = {}
    
    # build dictionary
    nums.each_with_index do |num, i|
        hash[i] = num unless hash.values.include?(num)
    end
    
    hash.keys.each_with_index do |key, i|
        nums[i] = hash[key]
    end
    
    hash.keys.length
end
