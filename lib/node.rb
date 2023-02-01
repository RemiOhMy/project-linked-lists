# frozen-string-literal: true

# Node Class that holds a value and a link to the next node
class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @next_node = next_node
    @value = value
  end
end
