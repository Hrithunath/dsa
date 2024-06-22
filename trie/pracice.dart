class Node {
  Map<String, Node> children = {};
  bool isEndOfWord = false;
}

class Trie {
  Node? root = Node();
  insert(String words) {
    Node? temp = root;
    for (var i = 0; i < words.length; i++) {
      final char = words[i];
      if (!temp!.children.containsKey(char)) {
        temp.children[char] = Node();
      }
      temp = temp.children[char];
    }
    temp!.isEndOfWord = true;
  }

  search(String words) {
    Node? temp = root;
    for (var i = 0; i < words.length; i++) {
      final char = words[i];
      if (!temp!.children.containsKey(char)) {
        return false;
      } else {
        temp = temp.children[char];
      }
    }
    return temp != null && temp.isEndOfWord;
  }

  startWith(String words) {
    Node? temp = root;
    for (var i = 0; i < words.length; i++) {
      final char = words[i];
      if (!temp!.children.containsKey(char)) {
        return false;
      } else {
        temp = temp.children[char];
      }
    }
    return temp != null;
  }

  String Lcp() {
    Node? temp = root;
    String prefix = '';
    while (temp!.children.length == 1 && !temp.isEndOfWord) {
      String char = temp.children.keys.first;
      prefix += char;
      temp = temp.children[char];
    }
    return prefix;
  }
}

void main() {
  Trie trie = Trie();
  trie.insert('hello');
  trie.insert('hai');
  trie.insert('hi');
  trie.insert('hellooo');
  trie.insert('hiii');
  print(trie.search('h'));
  print(trie.startWith('u'));
  print(trie.Lcp());
}
