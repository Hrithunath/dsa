import '../recursion/reverseString.dart';

class Node {
  
  int value;
  Node? next;
  Node(this.value);
}

class Stack {
  Node? top;

  void push(dynamic value) {
    Node? newNode = Node(value);
    if (top == null) {
      top = newNode;
    } else {
      newNode.next = top;
    }
    top = newNode;
  }

  pop() {
    top = top?.next;
  }

  search(int target) {
    Node? temp = top;
    while (temp != null) {
      if (temp.value == target) {
        print('Value Found');
        return;
      }
      temp = temp.next;
    }
    print('Not Found');
  }

  sum() {
    dynamic sum = 0;
    Node? temp = top;
    while (temp != null) {
      sum += temp.value;
      temp = temp.next;
    }
    print(sum);
  }

  countOdd() {
    Node? temp = top;
    int count = 0;
    while (temp != null) {
      if (temp.value % 2 != 0) {
        count++;
      }
      temp = temp.next;
    }
    print(count);
  }

  reverseString(String word) {
    Stack s = Stack();
    for (var i = 0; i < word.length; i++) {
      s.push(word[i]);
    }
    String reverseString = '';
    while (s.top != null) {
      reverseString += s.pop();
    }
    return reverseString;
  }

  void display() {
    Node? temp = top;
    while (temp != null) {
      print(temp.value);
      temp = temp.next;
    }
  }
}

void main() {
  Stack s = Stack();

  s.push(11);
  s.push(12);
  s.push(24);
  s.push(44);
  s.push(24);
  s.push(27);
  s.push(94);
  s.pop();
  s.countOdd();
  s.sum();
  s.search(12);
  String str = "hello";
  String reverse = reverseString(str);
  print(reverse);
  s.display();
}
