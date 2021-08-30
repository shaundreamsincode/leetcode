# @param {String} s
# @return {Boolean}
def are_occurrences_equal(s)
    char_counts = Hash.new(0)
    
    s.each_char do |c|
        char_counts[c] += 1
    end
    
    char_counts.values.uniq.length === 1
end
