# @param {Character[]} s
# @return {Void} Do not return anything, modify s in-place instead.
def reverse_string(s)
    i = 0
    j = s.length - 1
    
    while i < j do
        tmp = s[i]
        s[i] = s[j]
        s[j] = tmp
        
        i += 1
        j -= 1
    end
    
    s
end
