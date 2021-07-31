# https://leetcode.com/problems/valid-palindrome/
# @param {String} s
# @return {Boolean}
def is_palindrome(s)
    s.downcase!
    
    i = s[0]
    j = s[s.length-1]
    
    while i < j do
        if s[i] != s[j]
            return false
        else
            i += 1
            j -= 1
        end
    end
    
    true
end
