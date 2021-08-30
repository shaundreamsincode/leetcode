# @param {Integer[]} nums
# @return {Integer}
def sum_of_unique(nums)
    num_counts = Hash.new(0)
    
    nums.each do |num|
        num_counts[num] +=1
    end
    
    uniq_elements = []
    
    num_counts.each do |num, count|
        uniq_elements << num if count === 1
    end
    
    uniq_elements.sum
end
