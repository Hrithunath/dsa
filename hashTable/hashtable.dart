class Node {
  dynamic key;
  dynamic value;
  Node? next;
  Node(this.key, this.value);
}

class HashTable {
  List<Node?>? table;
  int size;

  HashTable(this.size) {
    table = List.generate(size, (index) => null);
  }
  getIndex(dynamic key) {
    return key.hashCode.abs() % size;
  }

  void add(dynamic key, dynamic value) {
    int index = getIndex(key);
    Node? newNode = Node(key, value);
    if (table?[index] == null) {
      table?[index] == newNode;
    } else {
      newNode.next = table?[index];
    }
    table?[index] = newNode;
  }

  void get(dynamic key) {
    int index = getIndex(key);
    Node? temp = table?[index];
    if (table?[index] == null) {
      print('empty');
    }
    while (temp != null) {
      if (temp.key == key) {
        print(temp.value);
      }
      temp = temp.next;
    }
  }

  void remove(String key) {
    int index = getIndex(key);
    if (table?[index] != null) {
      Node? temp = table?[index];
      Node? prev;
      while (temp != null) {
        if (temp.key == key) {
          if (prev == Null) {
            table?[index] = temp.next;
          } else {
            prev?.next = temp.next;
          }
        }
        temp = temp.next;
      }
    }
  }
}

void main() {
  HashTable h = HashTable(5);
  h.add('hai', 3);
  h.add('hi', 2);
  h.remove('hai');
  h.get('hi');
  h.get('hai');
}
