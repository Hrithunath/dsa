// void main() {
//   List list = [1, 2, 3, 3, 4, 4, 5];
//   int sum = 0;

//   for (int i = 0; i < list.length; i++) {
//     int currentNumber = list[i];
//     bool isduplicate = false;

//     for (int j = 0; j < i; j++) {
//       if (list[j] == currentNumber) {
//         isduplicate = true;
//         break;
//       }
//     }
//     if (isduplicate) {
//       for (int j = 0; j < i; j++) {
//         if (list[j] == currentNumber) {
//           sum += j;
//           break;
//         }
//       }
//     }
//   }
  
//   print(sum);
// }