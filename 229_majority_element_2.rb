# @param {Integer[]} nums
# @return {Integer[]}
def majority_element(nums)
  return nums.uniq if nums.length < 3

  num_count = Hash.new(0)
  max_val = nums.length / 3

  nums.each do |num|
    num_count[num] += 1
  end

  majority_elements = []

  num_count.each do |k, v|
    majority_elements << k if v > max_val
  end

  majority_elements.uniq
end