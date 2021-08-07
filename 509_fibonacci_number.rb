# @param {Integer} n
# @return {Integer}
def fib(n)
    return 0 if n === 0
    return 1 if n === 1
    
    memo = []
    memo[0] = 0
    memo[1] = 1
    
    (2..n).each do |i|
        memo[i] = memo[i-1] + memo[i-2]
    end
    
    memo.last
end
