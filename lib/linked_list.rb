# frozen-string-literal: true

require_relative 'node'

# LinkedList Class that recreates a linked list data structure
class LinkedList
  attr_accessor :head_node

  def initialize
    @head_node = nil
  end

  def append(value)
    if @head_node.nil?
      @head_node = Node.new(value)
    else
      current = @head_node
      current = current.next_node until current.next_node.nil?
      current.next_node = Node.new(value)
    end
  end

  def prepend(value)
    @head_node = Node.new(value, @head_node)
  end

  def size
    current = @head_node
    i = 0
    until current.nil?
      i += 1
      current = current.next_node
    end
    i
  end

  def head
    @head_node
  end

  def tail
    current = @head_node
    current = current.next_node until current.next_node.nil?
    current
  end

  def at(index)
    current = @head_node
    index.times { current = current.next_node unless current.nil? }
    current
  end

  def pop
    current = @head_node
    current = current.next_node until current.next_node.next_node.nil?
    current.next_node = nil
  end

  def contains?(value)
    current = @head_node
    until current.nil?
      return true if current.value == value

      current = current.next_node
    end
    false
  end

  def find(value)
    current = @head_node
    i = 0
    until current.nil?
      return i if current.value == value

      current = current.next_node
      i += 1
    end
  end

  def to_s
    current = @head_node
    loop do
      print "(#{current.value}) -> "
      current = current.next_node
      if current.nil?
        print "nil\n"
        break
      end
    end
  end

  # will insert a new node w/ value at index, will insert new node at the end if index is higher than current count
  def insert_at(value, index)
    current = @head_node
    (index - 1).times { current = current.next_node unless current.next_node.nil? }
    current.next_node = Node.new(value, current.next_node)
  end

  def remove_at(index)
    return 'Value at index is non-existent!' if at(index).nil?

    current = @head_node
    (index - 1).times { current = current.next_node unless current.next_node.nil? }
    current.next_node = current.next_node.next_node || nil
  end
end
