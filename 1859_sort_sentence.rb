# @param {String} s
# @return {String}
def sort_sentence(s)
    sorted_strings = s.split(" ").sort_by {|w| w[w.length-1] }
    puts sorted_strings
    
    sorted_strings.map {|string| string[0..string.length-2] }.join(" ")
end
