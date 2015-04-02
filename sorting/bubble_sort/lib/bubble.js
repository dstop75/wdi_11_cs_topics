var unsorted_array = [5, 3, 42, 398, 28, 2, 20, 5, 2, 0, -20, 4, 2, 4],
    result;

function bubbleSort(array) {
    var k = array.length;
    var sorted = false;
    while (!sorted) {
        var i = 0;
        k--;
        sorted = true;
        while (i < k) {
            if (array[i] > array[i + 1]) {
                sorted = false;
                var temp = array[i + 1];
                array[i + 1] = array[i];
                array[i] = temp;
            }
            i++;
        }
    }
    return array;
}
