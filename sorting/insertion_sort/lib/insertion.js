var unsorted_array = [5, 3, 42, 398, 28, 2, 20, 5, 2, 0, -20, 4];

function insertionSort(items) {
    for (var i = 1; i < items.length; i++) {
        var temp = items[i],
            c = i;
            while (c > 0 && items[c - 1] > temp) {
                items[c] = items[c - 1];
                c--;
                items[c] = temp;
            }
    }
    return items;
}


// for i = 1 to length(A) - 1
//     x = A[i]
//     j = i
//     while j > 0 and A[j-1] > x
//         A[j] = A[j-1]
//         j = j - 1
//         A[j] = x
//     end while
//  end for
