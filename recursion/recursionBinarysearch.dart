recursion(List<int> nums, target, min, max) {
  if (min <= max) {
    int mid = (min + max) ~/ 2;
    if (nums[mid] < 0) {
      print('not Found');
    } else if (target == nums[mid]) {
      print(mid);
    } else if (target < nums[mid]) {
      return recursion(nums, target, min - 1, min);
    } else if (target > nums[mid]) {
      return recursion(nums, target, max, max + 1);
    } else {
      print('not Found');
      return;
    }
  }
}

void main() {
  List<int> nums = [1, 2, 3, 4, 5];
  recursion(nums, 4, 0, nums.length - 1);
}
