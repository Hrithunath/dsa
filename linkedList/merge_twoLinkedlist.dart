class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class LinkedList {
  Node? head;
  Node? tail;

  void addNode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
    }
    tail = newNode;
  }

  void display1() {
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
  LinkedList list = LinkedList();
  // Node list1 = LinkedList1();
  //   LinkedList2 list2 = LinkedList2();

  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.addNode(40);
  list.addNode(50);
  list.addNode(7);
  list.display1();

  // list2.addNode(60);
  // list2.addNode(70);
  // list2.addNode(80);
  // list2.addNode(90);
  // list2.addNode(100);
  // list2.display2();
  // list1.tail?.next = list2.head;
  // print(list1);
}
