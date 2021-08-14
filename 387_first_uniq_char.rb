# @param {String} s
# @return {Integer}
def first_uniq_char(s)
    max_value = 99999999999999999
    first_char_locations = {}
    
    s.split("").each_with_index do |c, i|
        if !first_char_locations[c]
            first_char_locations[c] = i
        else
            first_char_locations[c] = max_value
        end
    end
    
    return -1 if first_char_locations.values.min === max_value
    first_char_locations.values.min
end
