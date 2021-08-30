# @param {String} text
# @param {String} broken_letters
# @return {Integer}
def can_be_typed_words(text, broken_letters)
    word_count = 0
    
    text.split(" ").each do |word|
        word_can_be_written = true
        
        word.each_char do |c|
            if broken_letters.include?(c)
                word_can_be_written = false
                break
            end
        end
        
        word_count +=1 if word_can_be_written
    end
    
    word_count
end
