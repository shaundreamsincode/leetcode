# @param {String} sentence
# @return {Boolean}
def check_if_pangram(sentence)
    char_counts = Hash.new(0)
    
    sentence.each_char do |c|
        char_counts[c] += 1
    end
    
    ('a'..'z').each do |c|
        return false if char_counts[c] === 0
    end
    
    true
end
