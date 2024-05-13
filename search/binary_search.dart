void main() {
  List<int> list = [11, 33, 44, 55, 66, 77, 88];
  void find(List<int> list, int Target) {
    int min = 0;
    int max = list.length - 1;
    while (min <= max) {
      int mid = ((min + max) / 2).floor();
      if (Target == list[mid]) {
        print('value found at $mid');
        mid = 0;
        return;
      } else if (Target < list[mid]) {
        max = min - 1;
      } else {
        min = mid + 1;
      }
    }
    print('Value not found in the list');
  }

  print(list);
  find(list, 88);
}
