fibinocci(int n) {
  if (n <= 1) {
    return 1;
  }
  return n+ fibinocci((n - 1 + (n - 2)));
}

void main() {
  print(fibinocci(5));
}
