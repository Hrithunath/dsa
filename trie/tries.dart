// class Node {
//   Map<String, Node> children = {};
//   bool isEndofWord = false;
// }

// class tries {
//   Node root = Node();
//   void insert(String words) {
//     Node? temp = root;
//     for (int i = 0; i < words.length; i++) {
//       final Char = words[i];
//       if (!temp!.children.containsKey(Char)) {
//         temp.children[Char] = temp;
//       } else {
//         temp = temp.children[Char];
//       }
//     }
//     temp?.isEndofWord = true;
//   }

//   bool Search(String words) {
//     Node? temp = root;
//     for (int i = 0; i < words.length; i++) {
//       final Char = words[i];
//       if (!temp!.children.containsKey(Char)) {
//         return false;
//       } else {
//         temp = temp.children[Char];
//       }
//     }
//     return temp != null && temp.isEndofWord;
//   }

//   bool StartsWith(String words) {
//     Node temp = root;
//     for (int i = 0; i < words.length; i++) {
//       final Char = words[i];
//       if (!temp.children.containsKey(Char)) {
//         return false;
//       }
//         temp = temp.children[Char]!;

//     }
//     return temp != Null;
//   }
// }

// void main() {
//   tries tr = tries();
//   tr.insert("hello");
//   print(tr.Search('he'));
//   print(tr.StartsWith('llo'));
// }

import 'dart:ffi';

class Node {
  Map<String, Node> children = {};
  bool isEndofWord = false;
}

class Tries {
  Node? root = Node();
  void insert(String word) {
    Node? temp = root;
    for (var i = 0; i < word.length; i++) {
      final char = word[i];
      if (!temp!.children.containsKey(char)) {
        temp.children[char] = temp;
      }
      temp = temp.children[char];
    }
    temp?.isEndofWord = true;
  }

  bool search(String word) {
    Node? temp = root;
    for (var i = 0; i < word.length; i++) {
      final char = word[i];
      if (!temp!.children.containsKey(char)) {
        return false;
      } else {
        temp = temp.children[char];
      }
    }
    return temp != null && temp.isEndofWord;
  }
}

void main() {
  Tries tr = Tries();
  tr.insert("hello");
  print(tr.search("he"));
}
