
binarySearch(List<int> list, target, min, max) {
  if (min <= max) {
    int mid = (min + max) ~/ 2;
    if (target == list[mid]) {
      print(mid);
    } else if (target < list[mid]) {
      return binarySearch(list, target, min, mid - 1);
    } else {
      return binarySearch(list, target, mid + 1, max);
    }
  } else {
    print('Not Found');
  }
}

void main() {
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8];
  binarySearch(list, 3, 0, list.length - 1);
}
