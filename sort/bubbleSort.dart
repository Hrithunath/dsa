bubbleSort(List list) {
  for (int i = 0; i < list.length - 1; i++) {
    for (int j = 0; j < list.length - i - 1; j++) {
      if (list[j] > list[j + 1]) {
        int temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
}

void main() {
  List<int> list = [133, 4, 6, 7, 88, 85, 3];
  bubbleSort(list);
  print(list);
}
