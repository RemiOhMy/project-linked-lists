# frozen-string-literal: true

require_relative 'lib/linked_list'

# initialize new list
list = LinkedList.new

# append and prepend values - should be = 10 -> 5 -> 15 -> 25
list.append(15)
list.append(25)
list.prepend(5)
list.prepend(10)
list.to_s

# pop the last value on the list - which should be 25
list.pop
list.to_s

# test append and prepend after pop - should be = 0 - 10 -5 - 15 - 35
list.append(35)
list.prepend(0)
list.to_s

# test head/tail node value, and contains?
puts "Head Node Value: #{list.head.value}"
puts "Tail Node Value: #{list.tail.value}"
puts "Is the value 15 in the list? #{list.contains?(15)}"
puts "Is the value 22 in the list? #{list.contains?(22)}"

# insert values at given indices (will insert values at the end if index is not within current list)
list.insert_at(12, 2)
list.to_s
list.insert_at(100, 10)
list.to_s

# remove values at given indices (will not remove anything if index is outside of current list)
list.remove_at(2)
list.to_s
p list.remove_at(10)
list.to_s
