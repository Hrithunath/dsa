insertionSort(List<int> list) {
  for (int i = 1; i < list.length; i++) {
    int current = list[i];
    int j = i - 1;
    while (j >= 0 && list[j] > current) {
      list[j + 1] = list[j];
      j--;
    }
    list[j + 1] = current;
  }
  return list;
}

void main() {
  List<int> list = [13, 5, 6, 78, 5, 5, 43, 25, 9];
  insertionSort(list);
  print(list);
}
