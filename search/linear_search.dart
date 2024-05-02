void main() {
  List<int> list = [23, 34, 67, 89, 4, 3, 5];
  void find(List<int> list, int target) {
    for (int i = 0; i < list.length; i++) {
      if (list[i] == target) {
        print('value Found');
      }
    }
    print('Not Found');
  }

  find(list, 77);
}
