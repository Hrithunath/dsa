void main() {
  List<int> list = [11, 33, 44, 55, 66, 77, 88];
  void find(List<int> list, int Target) {
    int min = 0;
    int max = list.length - 1;
    while (min <= max) {
      int mid = ((min + max) / 2).floor();
      if (Target == list[mid]) {
        print('value found at $mid');
        return;
      } else if (Target < list[mid]) {
        max = mid - 1;
      } else {
        min = mid + 1;
      }
    }
     print('Value not found in the list');
  }
  find(list, 88);
}

// void main() {
//   List<int> list = [11, 22, 33, 44, 55, 66];
//   void find(List<int> list, int target) {
//     int first = 0;
//     int last = list.length - 1;
//     while (first <= last) {
//       int mid = ((first + last) / 2).floor();
//       if (target == list[mid]) {
//         print('value found at $mid');
//         return;
//       } else if (target < list[mid]) {
//         last = mid - 1;
//       } else {
//         first = mid + 1;
//       }
//     }
//     print('value not found');
//   }
//   find(list, 55);
// }
