void main() {
  List<int> numbers = [5, 9, 3, 7, 1, 8];
  
  // Sort the list in descending order
  numbers.sort((a, b) => b.compareTo(a));
  
  // The second largest element is at index 1 after sorting
  int secondLargest = numbers[1];
  
  // Print the second largest element
  print("The second largest element in the list is: $secondLargest");
}
