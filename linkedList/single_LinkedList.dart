// class Node {
//   int? data;
//   Node? next;

//   Node(int this.data) {}
// }

// class LinkedList {
//   Node? head;
//   Node? tail;
//   void addvalue(int data) {
//     Node newNode = Node(data);
//     head ??= newNode;
//     tail?.next = newNode;
//     tail = newNode;
//   }

//   void addbeg(int data) {
//     Node newNode = Node(data);
//     newNode.next = head;
//     head = newNode;
//   }

//   void addend(int data) {
//     Node newNode = Node(data);
//     tail?.next = newNode;
//     tail = newNode;
//   }

//   void display() {
//     Node? temp = head;
//     head ?? print('List is Empty');
//     while (temp != null) {
//       print(temp.data);
//       temp = temp.next;
//     }
//   }

//   void insertBefore(int data, int target) {
//     Node newNode = Node(data);
//     Node? prev;
//     Node? temp = head;

//     if (temp?.data == target) {
//       newNode.next = temp;
//       temp = newNode;
//     }
//     while (temp != null) {
//       if (temp.data == target) {
//         break;
//       }
//       prev = temp;
//       temp = temp.next;
//     }
//     prev?.next = newNode;
//     temp = newNode.next;
//   }

//   void insertAfter(int data, int target) {
//     Node? temp = head;
//     Node? newNode = Node(data);
//     while (temp != null) {
//       if (temp.data == target) {
//         break;
//       }
//       temp = temp.next;
//     }
//     if (tail == temp) {
//       tail!.next = newNode;
//       tail = newNode;
//       return;
//     }
//     newNode.next = temp?.next;
//     newNode = temp?.next;
//   }

//   void deleteNode(int data) {
//     Node? prev;
//     Node? temp = head;
//     if (temp != null && temp.data == data) {
//       head = temp.next;
//     }
//     while (temp != null) {
//       if (temp.data == data) {
//         break;
//       }
//       prev = temp;
//       temp = temp.next;
//     }
//     prev?.next = temp?.next;

//     if (temp == tail) {
//       tail = prev;
//       tail = null;
//     }
//   }
// }

// // void deletebeg() {

// //   head = head!.next;
// // }
// void deleteEnd() {
//   while (temp.next != tail) {
//     temp = temp.next;
//   }
//   tail = temp;
//   temp.next = null;
// }
// void main() {
//   LinkedList list = LinkedList();
//   list.addvalue(10);
//   list.addvalue(20);
//   list.addvalue(30);
//   list.addvalue(40);
//   list.addbeg(14);
//   list.addend(7);
//   list.insertBefore(13, 30);
//   list.insertAfter(17, 40);
//   list.deleteNode(30);

//   list.display();
// }

class Node {
  int? data;
  Node? next;

  Node(int data) {
    this.data = data;
  }
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
    newNode.next = temp;
    temp?.next = newNode;
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
    print('ne');
    head = head?.next;
    print('la');
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
  // list.insertAfter(24, 20);
  list.display();
  // print('\n_______________________________________\n');
  // list.deleteNode(30);
  print('beg');
  list.deletebeg();
  print('next');
  // list.deleteEnd();
}
