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
    head ??= newNode;
    tail?.next = newNode;
    newNode.prev = tail;
    tail = newNode;
  }

  void display() {
    Node? temp = head;
    if (temp == null) {
      print('Empty');
    }
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  Linkedlist list = Linkedlist();
  list.addvalue(10);
  list.addvalue(20);
  list.addvalue(30);
  list.addvalue(40);
  list.addvalue(50);
  list.display();
}
