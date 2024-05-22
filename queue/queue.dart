class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class Queue {
  Node? front;
  Node? rear;

  void enqueue(int data) {
    Node? newNode = Node(data);
    if (front == null) {
      front = newNode;
    } else {
      rear?.next = newNode;
    }
    rear = newNode;
  }

  void dequeue() {
    front = front?.next;
  }

  void display() {
    Node? temp = front;
    if (front == null) {
      print('Empty');
    }
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  Queue q = Queue();
  q.enqueue(10);
  q.enqueue(20);
  q.enqueue(30);
  q.enqueue(40);
  q.dequeue();
  q.display();
}
