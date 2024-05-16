// void main() {
//   List arr = [1, 2, 3, 3, 4, 1];
//   Set num = arr.toSet();
//   List unique = num.toList();
//   print(unique);
// }

void main() {
  String word = 'hello';
  String char = word.split('').toSet().join();
  print(char);
}
