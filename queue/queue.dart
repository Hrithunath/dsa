class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class Queue {
  Node? front;
  Node? rear;

  void Enqueue(int data) {
    Node newNode = Node(data);
    if (front == null) {
      front = newNode;
    } else {
      rear!.next = newNode;
    }
    rear = newNode;
  }

  void display() {
    Node? temp = front;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  Queue q = Queue();
  q.Enqueue(14);
  q.Enqueue(56);
  q.Enqueue(38);
  q.Enqueue(28);
  q.display();
}
