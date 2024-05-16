// void main() {
//   List<int> arr = [1, 2, 3, 4, 5, 6];
//   arr.add(79);
//   // arr.addAll([2, 5, 6, 7]);
//   // arr.remove(1);
//   arr.removeAt(3);
//   print(arr);
// }
// void main() {
//   List<int> arr = [1, 2, 3, 4, 5, 6, 7, 8, 9];
//   for (int i = 0; i <= arr.length-1 ; i++) {
//     for (int j = 0; j < i; j++) {
//       if (arr[j] == arr[i]) {
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

// void main() {
//   List<int> arr = [1, 2, 3, 4, 5];
//   int sum = 0;
//   for (int i = 0; i < arr.length; i++) {
//     sum = sum + arr[i];
//   }
//   print(sum);
//   if (sum % 2 == 0) {
//     print('even');
//   } else {
//     print('odd');
//   }
// }
// void main() {
//   List<int> list = [1, 2, 3, 4, 5];
//   int even = 0;
//   int odd = 0;
//   for (int i = 0; i < list.length; i++) {
//     if (list[i] % 2 == 0) {
//       even = even + list[i];
//     } else {
//       odd = odd + list[i];
//     }
//   }
//   if (even % 2 == 0) {
//     print("even");
//   } else {
//     print("odd");
//   }
//   if (odd % 2 == 0) {
//     print("even");
//   } else {
//     print("odd");
//   }
// }
// void main() {
//   List<int> nums = [1, 2, 3, 4,5, 6, 3, 2];
//   for (int i = 0; i < nums.length; i++) {
//     for (int j = i + 1; j < nums.length; j++) {
//       if (nums[i] == nums[j]) {
//         nums[j] = 0;

//       }
//     }
//   }
//   print(nums);
// }

// void main() {
//   List<int> nums = [1, 5, 2, 2, 3, 4, 4, 1, 5];
//   for (int i = 0; i < nums.length; i++) {
//     int count = 0;
//     for (int j = i + 1; j < nums.length; j++) {
//       if (nums[i] == nums[j]) {
//         count++;
//       }
//     }
//     if (count >= 1) {
//       print(nums[i]);
//     }
//   }
// }

// void main() {
//   List<int> nums = [1, 2, 3, 4, 5, 6];
//   int sum = 0;
//   int a = -1;
//   int b = -1;
//   int target1 = 5;
//   int target2 = 6;
//   for (int i = 0; i < nums.length; i++) {
//     if (nums[i] == target1) {
//       a = i;
//       // print(a);
//     }
//     if (nums[i] == target2) {
//       b = i;
//       // print(b);
//     }
//   }
//   if (a != -1 && b != -1) {
//     sum = a + b;
//     print(sum);
//     if (sum % 2 == 0) {
//       print('even');
//     } else {
//       print('odd');
//     }
//   }
// }

// void main() {
//   List<int> num = [1, 2, 3, 4, 5, 6, 7];
//   Set numbers = num.toSet();
//   List unique = numbers.toList();
//   print(unique);
// }

// void main() {
//   int n = 4;
//   List words = ['hai', 'hellomm', 'goodsd', 'badrres'];
//   for (int i = 0; i <= n; i++) {
//     if (i == n - 1) {
//       print(words[i].length);
//     }
//   }
// }

// void main() {
//   List<int> arr = [1, 2, 3, 4, 5, 6, 7, 8];
//   int start = 0;
//   int end = arr.length - 1;
//   while (start < end) {
//     int temp = arr[start];
//     arr[start] = arr[end];
//     arr[end] = temp;
//     start++;
//     end--;
//   }
//   print(arr);
// }

