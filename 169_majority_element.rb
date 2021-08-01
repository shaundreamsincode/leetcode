# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    hash = Hash.new(0)
    
    nums.each do |num|
        hash[num] += 1
    end
    
    majority_value = 0
    majority_key = 0
    
    hash.keys.each do |key|
        value = hash[key]
        
        if value > majority_value
            majority_value = value
            majority_key = key
        end
    end
    
    majority_key
end
