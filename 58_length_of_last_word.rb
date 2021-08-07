# @param {String} s
# @return {Integer}
def length_of_last_word(s)
    # do a grep for any whitespace less than 1 char long, replace it with one space
    s.gsub!(/\s{2,}/, " ")
    
    # Strip all of the whitespace in the string.
    s.strip!
    
    # Split the string up into an array, get the last item, and return the length.
    s.split(" ").last.length
end
