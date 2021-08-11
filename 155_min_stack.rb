class MinStack
    attr_reader :stack
=begin
    initialize your data structure here.
=end
    def initialize(stack=[])
        @stack = stack
    end


=begin
    :type val: Integer
    :rtype: Void
=end
    def push(val)
        stack << val
    end


=begin
    :rtype: Void
=end
    def pop()
        stack.pop
    end


=begin
    :rtype: Integer
=end
    def top()
        stack.last
    end


=begin
    :rtype: Integer
=end
    def get_min()
        stack.min
    end


end

# Your MinStack object will be instantiated and called as such:
# obj = MinStack.new()
# obj.push(val)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.get_min()
