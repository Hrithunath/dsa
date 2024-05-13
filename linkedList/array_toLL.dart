class Node {
  int? data;
  Node? next;

  Node(this.data);
}

class Linkedlist {
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
  List<int> numbers = [1, 2, 3, 4, 5];
  for (int element in numbers) {
    list.addNode(element);
    
  }
  list.display();
}
