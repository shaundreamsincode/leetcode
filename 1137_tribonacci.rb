# @param {Integer} n
# @return {Integer}
def tribonacci(n)
    return 0 if n === 0
    return 1 if n === 1 || n === 2

    memo = []
    memo[0] = 0
    memo[1] = 1
    memo[2] = 1
    
    (3..n).each do |i|
        memo[i] = memo[i-1] + memo[i-2] + memo[i-3]
    end
    
    memo.last
end
