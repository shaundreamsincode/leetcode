def is_valid(s)
    stack = []
    dictionary = {
        "[" => "]",
        "{" => "}",
        "(" => ")"
    }
    
    open_brackets = dictionary.keys
    
    s.each_char do |c|
        if open_brackets.include?(c)
            stack << c
        else
            last_char = stack.pop
            puts last_char
            
            return false unless c == dictionary[last_char]
        end
    end
    
    stack.empty?
end
