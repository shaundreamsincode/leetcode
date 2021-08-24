# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
    return false if ransom_note.length > magazine.length
    
    magazine_char_counts = Hash.new(0)
    
    magazine.each_char do |c|
        magazine_char_counts[c] += 1
    end
    
    ransom_note.each_char do |c|
        if magazine_char_counts[c] - 1 < 0
            return false
        else
            magazine_char_counts[c] -= 1
        end
    end
    
    true
end
