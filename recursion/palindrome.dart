palindrome(String str, start, end) {
  if (start >= end) {
    return true;
  }

  if (str[start] != str[end]) {
    return false;
  }

  return palindrome(str, start + 1, end - 1);
}

void main() {
  String words = 'hee';
  if (palindrome(words, 0, words.length - 1)) {
    print('palindrome');
  } else {
    print('Not palindrome');
  }
}
