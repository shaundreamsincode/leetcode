# https://leetcode.com/problems/decompress-run-length-encoded-list
# @param {Integer[]} nums
# @return {Integer[]}
def decompress_rl_elist(nums)
    decompressed_list = []
    
    nums.each_slice(2) do |freq, val|
        freq.times do
            decompressed_list << val
        end
    end
    
    decompressed_list
end
