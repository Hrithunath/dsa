reverseString(String str) {
  if (str.length <= 1) {
    return str;
  }
  return reverseString(str.substring(1)) + str[0];
}

void main() {
  String word = 'hai';
  String reverse = reverseString(word);
  print(reverse);
}
