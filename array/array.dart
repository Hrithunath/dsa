// void main() {
//   List<int> arr = [1, 2, 3, 4, 5, 6];
//   arr.add(79);
//   // arr.addAll([2, 5, 6, 7]);
//   // arr.remove(1);
//   arr.removeAt(3);
//   print(arr);
// }

// void main() {
//   List<int> arr = [1, 2,5, 3, 4,  5, 6, 7, 8, 8, 9];
//   for (int i = 0; i < arr.length - 1; i++) {
//     for (int j = 0; j < i; j++) {
//       if (arr[j]==arr[i] ) {
//         arr.remove(arr[j]);
//       }
//     }
//   }
//   print(arr);
// }

// Linear Search
// void main() {
//   int i;
//   List<int> nums = [1, 2, 3, 4, 5, 6, 7, 8];
//   int target = 4;
//   for ( i = 0; i < nums.length; i++) {
//     if (nums[i] == target) {
//       break;
//     }
//   }
//   print('position $i');
// }

//Binary search
// void main() {
//   List<int> num = [1, 2, 3, 4, 5, 6, 7, 8];
//   int target = 5;
//   int min = 0;
//   int max = num.length - 1;
//   while (min <= max) {
//     int mid = ((min + max) / 2).floor();
//     if (target == num[mid]) {
//       print('Value Found at $mid');
//       return;
//     } else if (target < num[mid]) {
//       max = mid - 1;
//     } else {
//       min = mid + 1;
//     }
//   }
//   print('Value not Found');
// }
// void main() {
//   List<int> numbers = [5, 9, 3, 7, 1, 8];
//   int n = 3;

//   // Sort the list in descending order
//   numbers.sort((a, b) => b.compareTo(a));

//   // Print the nth largest element
//   print("The $n-th largest element in the list is: ${numbers[n - 1]}");
// }

void main() {
  List<int> list = [1, 2, 3, 4, 5];
  list.add(2);
  list.addAll([1, 2, 3, 4, 5]);
  list.remove(2);
  list.removeAt(4);
  list.removeLast();
  list.insert(4, 6);
  list.insertAll(5, [7, 8, 9]);
  print(list);
}
