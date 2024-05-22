import 'stackList.dart';

class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class Stack {
  Node? top;

  void push(int data) {
    Node newNode = Node(data);
    if (top == null) {
      top = newNode;
    } else {
      newNode.next = top;
      top = newNode;
    }
  }

  void pop() {
    top = top?.next;
  }

  void peek() {
    print(top?.data);
  }

  void dispaly() {
    Node? temp = top;
    if (top == null) {
      print('Empty');
    }
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  stack s = stack();
  s.push(10);
  s.push(20);
  s.push(30);
  s.push(40);
  s.pop();
  s.peek();
  s.display();
}
