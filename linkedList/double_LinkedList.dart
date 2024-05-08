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

  void addbeg(int data) {
    Node newNode = Node(data);
    newNode.next = head;
    head?.prev = newNode;
    head = newNode;
  }

  void addend(int data) {
    Node newNode = Node(data);
    tail?.next = newNode;
    newNode.prev = tail;
    tail = newNode;
  }

  void deletebeg() {
    head = head?.next;
  }

  void deleteend() {
    Node? temp = head;
    while (temp?.next != tail) {
      temp = temp?.next;
      temp?.prev = temp;
    }
    tail = temp;
    tail?.next = null;
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
  list.addbeg(09);
  list.addend(51);
  list.deletebeg();
  list.deleteend();
  list.display();
}
