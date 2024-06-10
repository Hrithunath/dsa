QuickSort(List arr) {
  if (arr.length <= 1) {
    return arr;
  }
  int pivot = arr[arr.length ~/ 2];
  List<int> less = [];
  List<int> great = [];
  for (int i = 0; i < arr.length - 1; i++) {
    if (arr[i] < pivot) {
      less.add(arr[i]);
    } else if (arr[i] > pivot) {
      great.add(arr[i]);
    }
  }
  return [...QuickSort(less), pivot, ...QuickSort(great)];
}

void main() {
  List<int> arr = [34, 56, 7, 8, 9, 34, 67, 33, 8];
  QuickSort(arr);
  print(QuickSort(arr));
}

Quicksort(List arr) {
  if (arr.length <= 1) {
    return arr;
  }
  int pivot = arr[arr.length ~/ 2];
  List<int> less = [];
  List<int> great = [];
  for (int i = 0; i < arr.length - 1; i++) {
    if (arr[i] < pivot) {
      less.add(arr[i]);
    } else if (arr[i] > pivot) {
      great.add(arr[i]);
    }
  }
  return [...QuickSort(less), pivot, ...QuickSort(great)];
}
