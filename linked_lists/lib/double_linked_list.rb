class Node
  attr_accessor :value, :next_node, :prev_node

  def initialize(value = nil)
    @value = value
    @next_node = nil
    @prev_node = nil
  end

  def to_s
    @value || nil
  end
end

class DoubleLinkedList
  attr_reader :head, :tail, :length

  def initialize(value = nil)
    @head = nil
    @tail = nil
    @length = 0
    if value
      @head = Node.new(value)
      @tail = @head
      @length += 1
    end
  end

  def prepend(value)
    node = Node.new(value)
    if empty?
      @head = node
      @tail = node
    else
      node.next_node = @head
      @head.prev_node = node
      @head = node
    end
    @length += 1
  end

  def append(value)
    node = Node.new(value)
    if empty?
      @head = node
      @tail = node
    else
      @tail.next_node = node
      node.prev_node = @tail
      @tail = node
    end
    @length += 1
  end

  def empty?
    !@head
  end

  def find(value)
    current = @head
    while current
      return current if current.value == value
      current = current.next_node
    end
  end

  def insert_after(prev, new_node)
    if prev.next_node
      prev.next_node.prev_node = new_node
      new_node.next_node = prev.next_node
    else
      @tail = new_node
    end

    prev.next_node = new_node
    new_node.prev_node = prev
  end
end

class EmptyListError < StandardError
  attr_reader :object

  def initialize(object)
    @object = object
  end
end

class NodeNotFoundError < StandardError
  attr_reader :object

  def initialize(object)
    @object = object
  end
end

=begin
begin
  raise EmptyListError.new(object), "You cannot insert_after into an empty list"
rescue EmptyListError => e
  puts e.message # => "a message"
  # puts e.object # => "an object"
end

begin
  raise NodeNotFoundError.new(object),'Node not found'
rescue NodeNotFoundError => e
  puts e.message
  # puts e.object
end

=end


