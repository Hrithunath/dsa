// import '../recursion/reverseString.dart';

// void push(String word) {
//   List<String> stack = [];
//   for (var i = 0; i < word.length; i++) {
//     stack.add(word[i]);
//   }
//   String reverseString = '';
//   for (var i = 1; i < word.length; i++) {
//     reverseString += word[i];
//   }
// }

// void main() {
//   String word = ' hello';
//   String str = reverseString(word);
//   print(str);
// }

bubbleSorting(List arr) {
  for (int i = 0; i < arr.length - 1; i++) {
    for (int j = 0; j < arr.length - 1 - i; j++) {
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
  List<int> arr = [4, 523, 53, 3, 3, 5];
  print(bubbleSorting(arr));
}
