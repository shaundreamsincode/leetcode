# https://leetcode.com/problems/jewels-and-stones/

# @param {String} jewels
# @param {String} stones
# @return {Integer}
def num_jewels_in_stones(jewels, stones)
    count = 0
    jewels_hash = {}
    
    jewels.each_char do |jewel|
        jewels_hash[jewel] = true
    end
    
    stones.each_char do |stone|
        count +=1 if jewels_hash[stone]
    end
    
    count
end
