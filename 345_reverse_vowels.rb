# @param {String} s
# @return {String}
def reverse_vowels(s)
    vowels = %w(a e i o u)
    vowel_indices = []
    
    s.split("").each_with_index do |c, i|
        if vowels.include?(c.downcase)
            vowel_indices << i
        end
    end
    
    i = 0
    j= vowel_indices.length - 1
    puts vowel_indices
    
    while i < j do
        s = swap(s, vowel_indices[i], vowel_indices[j])
        
        i += 1
        j -= 1
    end
    
    s
end

def swap(s, i, j)
    tmp = s[i]
    s[i] = s[j]
    s[j] = tmp
    s
end
