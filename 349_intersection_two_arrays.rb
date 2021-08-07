# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersection(nums1, nums2)
    results = []
    
    nums1.each do |num|
        results << num if nums2.include?(num)
    end
    
    results.uniq
end
