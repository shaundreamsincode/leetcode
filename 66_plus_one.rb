# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    num = 0
    
    digits.reverse.each_with_index do |digit, i|
        num += digit * 10 ** i
    end
    
    num += 1
    num.digits.reverse
end
