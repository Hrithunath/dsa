import '../linkedList/reverse_display.dart';

class Node {
  int? data;
  Node? next;
  Node? prev;

  Node(this.data);
}

class DoubleLinkedList {
  Node? head;
  Node? tail;

  void addNode(int data) {
    Node? newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
  }

  void prepend(int data) {
    Node newNode = Node(data);
    newNode.next = head;
    // head?.prev = newNode;
    head = newNode;
  }

  void append(int data) {
    Node NewNode = Node(data);
    tail?.next = NewNode;
    // NewNode.prev = tail;
    tail = NewNode;
  }

  void insertBefore(int data, target) {
    Node newNode = Node(data);
    Node? temp = head;
    if (head?.data == target) {
      newNode.next = head;
      head = newNode;
    }
    while (temp != null) {
      if (temp.data == target) {
        break;
      }
      temp = temp.next;
    }
    newNode.next = temp;
    newNode.prev = temp?.prev;
    temp?.prev?.next = newNode;
    temp?.prev = newNode;
  }

  void insertAfter(int data, target) {
    Node? newNode = Node(data);
    Node? temp = head;
    while (temp != null) {
      if (temp.data == target) {
        break;
      }
      temp = temp.next;
    }
    newNode.next = temp?.next;
    newNode.prev = temp;
    temp?.next?.prev = newNode;
    temp?.next = newNode;
  }

  void deleteBeg() {
    head = head?.next;
  }

  void deleteEnd() {
    Node? temp = head;
    while (temp != tail) {
      temp = temp?.next;
    }
    temp = tail;
    tail?.next = null;
  }

  void displayReverse() {
    Node? temp = tail;
    if (head == null) {
      print('Empty');
    }
    while (temp != null) {
      print(temp.data);
      temp = temp.prev;
    }
  }

  void display() {
    Node? temp = head;
    if (head == null) {
      print('Empty');
    }
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  DoubleLinkedList list = DoubleLinkedList();
  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.addNode(40);
  list.addNode(50);
  list.prepend(9);
  list.append(51);
  list.insertBefore(29, 30);
  list.insertAfter(41, 40);
  // list.deleteBeg();
  // list.deleteEnd();
  list.display();
  // list.displayReverse();
}
