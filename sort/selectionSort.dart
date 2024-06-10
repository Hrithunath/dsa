// selectionSort(List arr) {
//   for (int i = 0; i < arr.length - 1; i++) {
//     int small = i;
//     for (int j = i + 1; j < arr.length; j++) {
//       if (arr[small] >= arr[j]) {
//         small = j;
//       }
//     }
//     int temp = arr[small];
//     arr[small] = arr[i];
//     arr[i] = temp;
//   }
// }

// void main() {
//   List<int> arr = [2, 34, 45, 5677, 54, 3, 2];
//   selectionSort(arr);
//   print(arr);
// }

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
}

void main() {
  List<int> arr = [1, 32, 4, 23, 13, 2321, 3, 1];
  selectionSort(arr);
  print(arr);
}
