import 'single_LinkedList.dart';

class Node {
  int? data;
  Node? next;
  Node? prev;

  Node(this.data);
}

class Linkedlist {
  Node? head;
  Node? tail;

  void addvalue(int data) {
    Node? newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
  }

  void insertafter(int data, target) {
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
     temp?.next = newNode;
    temp?.next?.prev = newNode;
  }

  void insertbefore(int data, target) {
    Node? newNode = Node(data);
    Node? temp = head;
    if (head == null) {
      print('Empty');
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

  void display() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  Linkedlist list = Linkedlist();
  list.addvalue(1);
  list.addvalue(2);
  list.addvalue(3);
  list.addvalue(4);
  list.insertbefore(333, 3);
  list.insertafter(444, 4);
  list.display();
}
