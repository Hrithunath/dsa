String recursion(String str) {
  if (str.length <= 1) {
    return str;
  }
  return recursion(str.substring(1)) + str[0];
}

void main() {
print(recursion('flutter'));

}
