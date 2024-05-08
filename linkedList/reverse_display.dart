import 'single_LinkedList.dart';

class node {
  String? str;
  node? next;
  node? prev;
  node(this.str);
}

class Linkedlist {
  node? head;
  node? tail;

  addvalue(String str) {
    node? newNode = node(str);
    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
  }

  reverseDisplay() {
    node? temp = tail;
    List res = [];
    while (temp != null) {
      res.add(temp.str);
      temp = temp.prev;
    }
    return res.join();
  }
}

void main() {
  Linkedlist list = Linkedlist();
  var words = 'hello';
  for (int i = 0; i <= words.length; i++) {
    list.addvalue(words[i]);
  }
  print(list.reverseDisplay());
}
