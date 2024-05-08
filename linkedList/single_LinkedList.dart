class Node {
  int? data;
  Node? next;

  Node(this.data);
}

class linkedList {
  Node? head;
  Node? tail;

  void display() {
    Node? temp = head;
    head ?? print('empty');
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  int sum() {
    Node? temp = head;
    dynamic total = 0;
    head ?? print('empty');
    while (temp != null) {
      total += temp.data;
      temp = temp.next;
    }
    return total;
  }

  void addvalue(int data) {
    Node? newNode = Node(data);
    head ??= newNode;
    tail?.next = newNode;
    tail = newNode;
  }

  void addbeg(int data) {
    Node? newNode = Node(data);
    newNode.next = head;
    head = newNode;
  }

  void addEnd(int data) {
    Node? newnNode = Node(data);
    tail?.next = newnNode;
    tail = newnNode;
  }

  void insertBefore(int data, int target) {
    Node? newNode = Node(data);
    Node? prev;
    Node? temp = head;
    if (temp!.data == target) {
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

  void insertAfter(int data, int target) {
    Node? newNode = Node(data);
    Node? temp = head;
    while (temp != null) {
      if (temp.data == target) {
        break;
      }
      temp = temp.next;
    }
    if (temp == tail) {
      tail!.next = newNode;
      tail = newNode;
    }

    newNode.next = temp!.next;
    temp.next = newNode;
  }

  void deleteNode(int data) {
    Node? prev;
    Node? temp = head;
    if (temp != null && temp.data == data) {
      head = temp.next;
    }
    while (temp != null) {
      if (temp.data == data) {
        break;
      }
      prev = temp;
      temp = temp.next;
    }
    prev!.next = temp?.next;
    if (tail == temp) {
      prev = tail;
      tail = null;
    }
  }

  void deletebeg() {
    head = head?.next;
  }

  void deleteEnd() {
    Node? temp = head;
    while (temp?.next != tail) {
      temp = temp?.next;
    }
    tail = temp;
    temp?.next = null;
  }
}

void main() {
  linkedList list = linkedList();
  list.addvalue(10);
  list.addvalue(20);
  list.addvalue(30);
  list.addvalue(40);
  // list.addbeg(2);
  // list.addEnd(3);
  // list.insertBefore(34, 40);
  list.insertAfter(24, 30);
  list.display();
  // print('\n_______________________________________\n');
  // list.deleteNode(30);

  // list.deletebeg();
  // print(list.sum());
  list.deleteEnd();
  list.display();
}
