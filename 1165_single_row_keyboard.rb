# @param {String} keyboard
# @param {String} word
# @return {Integer}
def calculate_time(keyboard, word)
    distance = 0
    
    key_indices = Hash.new
    
    ('a'..'z').to_a.each_with_index do |key, i|
        key_indices[key] = keyboard.index(key)
    end
    
    prev = 0
    
    (0..word.length-1).each do |i|
        char = word[i]
        curr = key_indices[char]
        distance += (curr - prev).abs
        prev = curr
    end
    
    distance
end
