# @param {String} s
# @return {String}
def remove_vowels(s)
    vowels = %w(a e i o u)
    
    s.split("").each_with_index do |c, i|
        if vowels.include?(c)
            s[i] = "$"
        end
    end
    
    s.gsub(/\$/, "")
end
