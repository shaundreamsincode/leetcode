# @param {Integer[]} nums
# @return {Integer[]}

def smaller_numbers_than_current(nums)
    hash = {}
    results = []
    
    nums.sort.each_with_index do |num, i|
        next if hash[num]
        hash[num] = i
    end
    
    nums.each do |num|
        results << hash[num]
    end
    
    results
end
