removeDuplicate(String str) {
  if (str.length <= 1) {
    return str;
  }
  if (str[0] == str[1]) {
    return removeDuplicate(str.substring(1));
  } else {
    return str[0] + removeDuplicate(str.substring(1));
  }
}

void main() {
  String words = 'hello';
  String remove = removeDuplicate(words);
  print(remove);
  print(remove.length);
}
