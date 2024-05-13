class Node {
  int? data;
  Node? next;

  Node(this.data);
}

class Linkedlist {
  Node? head;
  Node? tail;

  void addNode(int data) {
    Node? newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
    }
    tail = newNode;
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

  void prepend(int data) {
    Node? newNode = Node(data);
    newNode.next = head;
    head = newNode;
  }

  void append(int data) {
    Node? newNode = Node(data);
    tail?.next = newNode;
    tail = newNode;
  }

  void insertBefore(int data, target) {
    Node? newNode = Node(data);
    Node? prev;
    Node? temp = head;
    if (head?.data == target) {
      newNode.next = head;
      head = newNode;
    }
    while (temp != null) {
      if (temp.data == target) {
        break;
      }
      prev = temp;
      temp = temp.next;
    }
    prev?.next = newNode;
    newNode.next = temp;
  }

  void insertAfter(int data, target) {
    Node newNode = Node(data);
    Node? temp = head;
    while (temp != null) {
      if (temp.data == target) {
        break;
      }
      temp = temp.next;
    }
    newNode.next = temp?.next;
    temp?.next = newNode;
  }

  void deleteBeg() {
    head = head?.next;
  }

  void deleteEnd() {
    Node? temp = head;
    if (temp != tail) {
      temp = temp?.next;
    }
    temp = tail;
    tail?.next = null;
  }

  void deleteNode(target) {
    Node? temp = head;
    Node? prev;
    if (head?.data == target) {
      head = head?.next;
    }
    while (temp != null) {
      if (temp.data == target) {
        break;
      }
      prev = temp;
      temp = temp.next;
    }
    prev?.next = temp?.next;
    if (tail?.data == target) {
      temp?.next = tail;
      temp = tail;
    }
  }
}

void main() {
  Linkedlist list = Linkedlist();
  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.addNode(40);
  list.addNode(50);
  list.prepend(09);
  list.append(51);
  list.insertBefore(29, 30);
  list.insertAfter(49, 40);
  // list.deleteBeg();
  // list.deleteEnd();
  list.deleteNode(30);
  list.display();
}
