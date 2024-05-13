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

  void removeDuplicate() {
    Node? temp = head;
    while (temp != null) {
      if (temp.data == temp.next?.data) {
         temp.next = temp.next?.next;
      }
      temp = temp.next;
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
  Linkedlist list = Linkedlist();
  list.addvalue(10);
  list.addvalue(20);
  list.addvalue(20);
  list.addvalue(40);
  list.addvalue(40);
  list.removeDuplicate();
  list.display();
}
