# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
    hash = Hash.new(0)
    
    nums.each do |num|
        hash[num] += 1
    end
    
    hash.keys.each do |key|
        return key if hash[key] == 1
    end
end
