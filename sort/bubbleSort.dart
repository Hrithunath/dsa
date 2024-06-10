bubbleSort(List arr) {
  for (int i = 0; i < arr.length - 1; i++) {
    for (int j = 0; j < arr.length - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
  return arr;
}

void main() {
  List<int> arr = [12, 43, 454, 6, 4, 23];
  print(bubbleSort(arr));
}
