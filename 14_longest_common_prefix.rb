# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    common_prefix = ""
    i = 0
    
    # get the length of the shortest string
    shortest_length = strs.sort_by { |str| str.length }.first.length
    
    while i < shortest_length do
        chars = []
        
        strs.each do |str|
            chars << str[i]
        end
        
        if chars.uniq.length == 1
            common_prefix += chars[0]
            i+= 1
        else
            break
        end
    end
    
    return common_prefix
end
