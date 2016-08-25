require_relative "node"
require "pry"
class BinarySearchTree
  attr_reader :head, :tree, :current, :left, :right, :node, :ratings

  def intitialize
    @head = nil
    @tree = nil

  end


  def insert(rating, title)
    # binding.pry
    node = Node.new(rating, title)
    if @head == nil
      @head = node
      0
    else
      push(node)
    end
  end

   def push(node)
    counter = 0
    current = @head

    x = false
    until x == true do
      counter +=1
      if (current.rating > node.rating) && current.left
        current = current.left

      elsif (current.rating > node.rating)
        # binding.pry
        # # start at top
        current.left = node
        x = true
      elsif (current.rating < node.rating) && current.right != nil
        current = current.right

      elsif (current.rating < node.rating)
        current.right = node
        x = true

      end
    end
    counter
  end
    def include?(rating)
    current_node = @head
    if current_node.rating == rating
      true
    else
      if current_node.rating < rating
        current_node = current_node.right
        current_node.include?(rating)

      else
        current_node.rating > rating
        current_node = current_node.left
        current_node.include?(rating)

      end
    end
  end

end
