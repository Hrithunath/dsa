// divide(List arr) {
//   if (arr.length <= 1) {
//     return arr;
//   }
//   int mid = arr.length ~/ 2;
//   List<int> left = divide(arr.sublist(0, mid));
//   List<int> right = divide(arr.sublist(mid));
//   return sort(left, right);
// }

// sort(List<int> Left, List<int> right) {
//   List<int> res = [];
//   int i = 0;
//   int j = 0;
//   while (i < Left.length && j < right.length) {
//     if (Left[i] <= right[j]) {
//       res.add(Left[i]);
//       i++;
//     } else {
//       res.add(right[j]);
//       j++;
//     }
//   }
//   while (i < Left.length) {
//     res.add(Left[i]);
//     i++;
//   }
//   while (j < right.length) {
//     res.add(right[j]);
//     j++;
//   }
//   return res;
// }

// void main() {
//   List<int> arr = [12, 4, 35, 2, 1, 4, 521, 3];
//   List mergeSort = divide(arr);
//   print(mergeSort);
// }

divide(List arr) {
  if (arr.length <= 1) {
    return arr;
  }
  int mid = arr.length ~/ 2;
  List<int> left = divide(arr.sublist(0, mid));
  List<int> right = divide(arr.sublist(mid));
  return sort(left, right);
}

sort(List<int> left, List<int> right) {
  List<int> res = [];
  int i = 0;
  int j = 0;
  while (i < left.length && j < right.length) {
    if (left[i] <= right[i]) {
      res.add(left[i]);
      i++;
    } else {
      res.add(right[j]);
      j++;
    }
  }
}
