require 'pry'
unsorted_array = [5, 3, 42, 398, 28, 2, 20, 5, 2, 0, -20, 4]

def merge(a1, a2)
  merged = []
  while a1.length > 0 && a2.length > 0
    if a1.first <= a2.first
      merged.push(a1.shift)
    else
      merged.push(a2.shift)
    end
  end
  while a1.length > 0
    merged.push(a1.shift)
  end
  while a2.length > 0
    merged.push(a2.shift)
  end
  return merged
end

def merge_sort(a)
  if a.length == 1
    return a
  end

  first = []
  second = []
  middle = a.length / 2

  0.upto(middle - 1) { |i| first.push(a[i]) }
  middle.upto(a.length - 1) { |n| second.push(a[n]) }
  first = merge_sort(first)
  second = merge_sort(second)

  return merge(first, second)
end

=begin
function merge_sort(list m)
    // Base case. A list of zero or one elements is sorted, by definition.
    if length(m) <= 1
        return m

    // Recursive case. First, *divide* the list into equal-sized sublists.
    var list left, right
    var integer middle = length(m) / 2
    for each x in m before middle
         add x to left
    for each x in m after or equal middle
         add x to right

    // Recursively sort both sublists
    left = merge_sort(left)
    right = merge_sort(right)

    // Then merge the now-sorted sublists.

=end

# function merge(left, right)
#     var list result
#     while notempty(left) and notempty(right)
#         if first(left) <= first(right)
#             append first(left) to result
#             left = rest(left)
#         else
#             append first(right) to result
#             right = rest(right)
#     // either left or right may have elements left
#     while notempty(left)
#         append first(left) to result
#         left = rest(left)
#     while notempty(right)
#         append first(right) to result
#         right = rest(right)
#     return result
