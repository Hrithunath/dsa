// void main() {
//   String word = 'malayalam';
//   String result = '';
//   for (int i = word.length - 1; i >= 0; i--) {
//     result = result + word[i];
//   }
//   print(word);
// }

// void main() {
//   String word = 'malayalam';
//   String result = '';
//   for (int i = 0; i < word.length - 1; i++) {
//     if (!result.contains(word[i])) {
//       result = result + word[i];
//     }
//   }
//   print(result);
// }

recursion(String str) {
  if (str.length <= 1) {
    return str;
  }
  return recursion(str.substring(1))+str[0];
}

void main() {
  String words = 'malayala';
  String result = recursion(words);
  print(result);
}
