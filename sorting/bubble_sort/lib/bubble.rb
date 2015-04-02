require 'pry'
def bubble_sort(list)

  k = list.length
  sorted = false
  until sorted
    k -= 1
    i = 0
    sorted = true
    while i < k
      if list[i] > list[i + 1]
        sorted = false
        list[i], list[i + 1] = list[i + 1], list[i]
      end
      i += 1
    end
  end
  list
end
