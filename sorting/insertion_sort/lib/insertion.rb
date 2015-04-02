unsorted_array = [5, 3, 42, 398, 28, 2, 20, 5, 2, 0, -20, 4]

def insertion_sort(array)
  1.upto(array.length - 1) do |loop_index|
    temp = array[loop_index]
    num = loop_index
    while num > 0 && array[num - 1] > temp
      array[num] = array[num - 1]
      num -= 1
      array[num] = temp
    end
  end
  array
end

# for i = 1 to length(A) - 1
#     x = A[i]
#     j = i
#     while j > 0 and A[j-1] > x
#         A[j] = A[j-1]
#         j = j - 1
#         A[j] = x
#     end while
#  end for
