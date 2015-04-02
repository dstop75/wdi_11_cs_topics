require 'pry'

# class Node

#   attr_accessor :value, :right_branch, :left_branch

#   def initialize(value = nil)
#     @value = value
#     @right_branch = nil
#     @left_branch = nil
#   end

#   # def to_s
#   #   @value || nil
#   # end
# end

class BinaryTree

  attr_reader :value, :right_branch, :left_branch

  # def left_branch(value)
  #   @value = value
  # end

  # def right_branch(value)
  #   @value = value
  # end

  def initialize(value)
    @value = value
    @left_branch = nil
    @right_branch = nil
  end

  def insert(value)
    if value < @value
      if @left_branch
        @left_branch.insert(value)
      else
        @left_branch = BinaryTree.new(value)
      end
    elsif value > @value
      if @right_branch
        @right_branch.insert(value)
      else
        @right_branch = BinaryTree.new(value)
      end
    else
    end
  end

  def destroy(value)
    node = find(value)
    node = nil
  end

  def find(value)
    if value < @value
      return @left_branch.find(value) if @left_branch
    elsif value > @value
      return @right_branch.find(value) if @right_branch
    elsif value == @value
      return self
    else
      return nil
    end
  end


end
