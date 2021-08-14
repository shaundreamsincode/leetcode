# @param {String} s
# @return {Boolean}
def valid_palindrome(s)
   return true if is_palindrome(s) || s.length < 2
    
    s.length.times do |i|
        s_without_i = s.dup
        s_without_i.slice!(i)
        puts s_without_i
        
        return true if is_palindrome(s_without_i)
    end
    
    false
end

def is_palindrome(s)
    i = 0
    j = s.length - 1
    
    while i < j do
        return false if s[i] != s[j]
        i += 1
        j -= 1
    end
    
    true
end
