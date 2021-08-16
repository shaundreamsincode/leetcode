# @param {Integer} x
# @return {Integer}
def reverse(x)
    max_int = 2**31 - 1
    
    is_negative = x < 0
    x = x.abs
    result = 0
    prev = 0
    
    while (x != 0) do
        curr = x % 10
        x = x / 10
        result = result * 10 + curr
        
        # we need to check, if we undid our last action, do we
        # get the same number as before?
        return 0 if (result - curr) / 10 != prev
        prev = result        
    end
    
    return 0 if !is_negative && result > max_int || is_negative && result > max_int + 1
    is_negative ? 0 - result : result
end
