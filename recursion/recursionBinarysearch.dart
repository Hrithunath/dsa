recursion(List<int> nums, target, min, max) {
  if (min <= max) {
    int mid = (min + max) ~/ 2;
    if (target == nums[mid]) {
      print(mid);
    } else if (target < nums[mid]) {
      return recursion(nums, target, min - 1, min);
    } else {
      return recursion(nums, target, max, max + 1);
    }
  }
}

void main() {
  List<int> nums = [1, 2, 3, 57, 6];
  recursion(nums, 3, 0, nums.length - 1);
}
