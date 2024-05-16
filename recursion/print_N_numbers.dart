void printNTimes(String str, n) {
  if (n <=0) {
    return ;
  }
  print(str);
  printNTimes(str, n-1 );
}

void main() {
  printNTimes('hello', 5);
}

// void printNTimes(int  n) {
//   if (n <=0) {

//     return ;
//   }

//   printNTimes( n - 1);
//    print(n);
// }

// void main() {
//   printNTimes(3);
// }

// sum(int n) {
//   if (n <= 1) {
//     return 1;
//   }
//   return n + sum(n - 1);
// }

// void main() {
//   print(sum(5));
// }

// reverseArray(List numbers, start, end) {
//   if (start > end) {
//     return;
//   }
//   int temp = numbers[start];
//   numbers[start] = numbers[end];
//    numbers[end] = temp;
//   return reverseArray(numbers, start + 1, end - 1);
// }

// void main() {
//   List<int> numbers = [1, 2, 3, 4, 5, 6];
//   reverseArray(numbers, 0, numbers.length-1 );
//   print(numbers);
// }
