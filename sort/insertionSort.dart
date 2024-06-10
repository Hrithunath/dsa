// insertionSort(List<int> list) {
//   for (int i = 1; i < list.length; i++) {
//     int current = list[i];
//     int j = i - 1;
//     while (j >= 0 && list[j] > current) {
//       list[j + 1] = list[j];
//       j--;
//     }
//     list[j + 1] = current;
//   }
//   return list;
// }

// void main() {
//   List<int> list = [13, 5, 6, 78, 5, 5, 43, 25, 9];
//   insertionSort(list);
//   print(list);
// }

insertionsort(List arr) {
  for (int i = 1; i < arr.length; i++) {
    int current = arr[i];
    int j = i - 1;
    while (j >= 0 && arr[j] > current) {
      arr[j + 1] = arr[j];
      j--;
    }
    arr[j + 1] = current;
  }
  return arr;
}
