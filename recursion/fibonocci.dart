int recursion(int n) {
  if (n <= 1) {
    return n;
  }
  return recursion(n - 1) + (n + 1);
}

void main() {
  print(recursion(5));
}
