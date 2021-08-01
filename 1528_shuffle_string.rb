# @param {String} s
# @param {Integer[]} indices
# @return {String}
def restore_string(s, indices)
    restored_string = s.dup
    
    (0..indices.length-1).each do |i|
        char = s[i]
        index = indices[i]
        restored_string[index] = char
    end
    
    restored_string
end
