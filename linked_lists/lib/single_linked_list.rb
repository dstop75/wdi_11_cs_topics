require 'pry'

class Node
  attr_accessor :value, :next_node

  def initialize(value=nil)
    @value = value
    @next_node = nil
  end

  def to_s
    "#{@value}" || nil
  end
end

class SingleLinkedList
  attr_reader :head, :last, :length

  def initialize(num)
    @head = Node.new(num)
    @last = @head
    @length = 1
  end

  def prepend(num)
    node = Node.new(num)
    node.next_node = @head
    @head = node
    @length += 1
  end

  def append(num)
    node = Node.new(num)
    @last.next_node = node
    @last = node
    @length += 1
  end

  def shift
    node = @head
    @head = @head.next_node
    @length -= 1
    node
  end

  def find(search_value)
    current = @head
    while current.next_node
      if current.value == search_value
        return current
      end
      current = current.next_node
    end
    return nil
  end

  # def length
  #   length = 0
  #   node = @head
  #   while node.next_node
  #     length += 1
  #   end
  # end

  def reverse
    reversed = SingleLinkedList.new(@head.value)
    node = @head
    while node.next_node
      node = node.next_node
      reversed.prepend(node.value)
    end
    reversed
  end

  def reverse!
    last = nil
    node = @head
    while node.next_node
      prior = node.next_node
      node.next_node = last
      last = node
      node = prior
    end
    node.next_node = last
    @head = node
    self
  end

  def insert_after(node, new_node)
    new_node.next_node = node.next_node
    node.next_node = new_node
  end

end

=begin
s = SinglyLinkedList.new("a")
binding.pry
s.append("b")
s.append("c")
s.append("d")
s.append("e")
puts "STARTING LIST"
puts s.to_s


puts "prepend 0"
s.prepend("0")
puts s.to_s

puts "append f"
s.append("f")
puts s.to_s

puts "remove"
puts s.remove

puts "last"
puts s.last

puts "length"
puts s.length

puts "Find c"
puts s.find("c")

puts "reverse 1"
puts s.reverse.to_s

puts "destructive reverse"
s.reverse!
s.to_s
=end
