# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer[]}

def search(root, visited_nodes)
    return visited_nodes if root.nil?

    left_subtree = search(root.left, visited_nodes)
    right_subtree = search(root.right, visited_nodes)
    [left_subtree, right_subtree, root.val].flatten
end

def postorder_traversal(root)
    search(root, [])
end
