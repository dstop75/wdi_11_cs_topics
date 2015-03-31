require 'pry'

class Node
  attr_accessor :value, :next_node

  def initialize(value = nil)
    @value = value
    @next_node = nil
  end

  def to_s
    @value || nil
  end
end

class Stack
  attr_accessor :head

  def initialize(element = nil)
    @head = Node.new(element) if element
  end

  def push(element)
    if empty?
      initialize(element)
    else
      raise "Nil not allowed" if element.nil?
      node = Node.new(element)
      node.next_node = @head
      @head = node
    end
  end

  def pop
    node = @head
    @head = @head.next_node
    node
  end

  def empty?
    @head.nil?
  end

end
