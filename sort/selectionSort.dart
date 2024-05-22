selectionSort(List arr) {
  for (int i = 0; i < arr.length - 1; i++) {
    int small = i;
    for (int j = i + 1; j < arr.length; j++) {
      if (arr[small] >= arr[j]) {
        small = j;
      }
    }
    int temp = arr[small];
    arr[small] = arr[i];
    arr[i] = temp;
  }
  return arr;
}

void main() {
  List<int> arr = [
    12,
    45,
    5,
    6,
    78,
    78,
    6,
    4,
    674,
    32,
  ];
  print(selectionSort(arr));
}
