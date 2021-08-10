# @param {Integer[]} arr
# @return {Boolean}
def valid_mountain_array(arr)
  return false if arr.length < 3
  is_going_downhill = false
  return false if arr == arr.sort || arr == arr.sort.reverse

  arr.each_cons(2) do |num1, num2|
    if num1 < num2
      return false if is_going_downhill
    elsif num1 === num2
      return false
    else
      is_going_downhill = true
    end
  end

  true
end