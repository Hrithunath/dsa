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
    Linkedlist list = Linkedlist();
    for (int i = 0; i <= str.length; i++) {
      list.addvalue(str[i]);
    }
    list.display();
  }

  void display() {
    node? temp = head;
    while (temp != null) {
      print(temp.str);
      temp = temp.next;
    }
  }
}

void main() {
  Linkedlist list = Linkedlist();
  var words = 'hello';
  print(words);
  list.display();
}
