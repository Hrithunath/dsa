// class Stack {
//   List arr = [];
//   void push(int data) {
//     arr.add(data);
//   }

//   void pop() {
//     arr.removeLast();
//   }

//   countOdd() {
//     int count = 0;
//     for (int i = 0; i <= arr.length - 1; i++) {
//       if (arr[i] % 2 == 1) {
//         count++;
//       }
//     }
//     return count;
//   }

//   sum() {
//     dynamic sum = 0;
//     for (int i = 0; i <= arr.length - 1; i++) {
//       sum += arr[i];
//     }
//     return sum;
//   }

//   search(int target) {
//     for (int i = 0; i <= arr.length - 1; i++) {
//       if (arr[i] == target) {
//         print('Found');
//         return;
//       }
//     }
//     print('Not Found');
//   }

//   reverseString(String word) {
//     List<String> stack = [];
//     for (var i = 0; i < word.length; i++) {
//       stack.add(word[i]);
//     }
//   }

//   display() {
//     print(arr);
//   }
// }

// void main() {
//   Stack s = Stack();
//   s.push(51);
//   s.push(16);
//   s.push(14);
//   s.push(134);
//   s.push(16);
//   s.push(18);
//   s.pop();
//   int odd = s.countOdd();
//   print(odd);
//   int sum = s.sum();
//   print(sum);
//   s.search(14);

//   s.display();
// }

Map<String, String> charMap = {
  '}': '{',
  '[': ']',
  ')': '(',
};

bool isValid(String s) {
  List<String> stack = [s[0]];
  for (int i = 1; i < s.length; i++) {
    if (stack.length == 0) {
      stack.add(s[i]);
    } else if (charMap[stack[stack.length - 1]] == s[i]) {
      stack.removeLast();
    } else {
      stack.add(s[i]);
    }
  }
  if (stack.length == 0) {
    return true;
  } else {
    return false;
  }
}
