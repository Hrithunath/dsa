// class Node {
//   Map<String, Node> children = {};
//   bool isEndofWord = false;
// }

// class Trie {
//   Node? root = Node();

//   insert(String word) {
//     Node? temp = root;
//     for (var i = 0; i < word.length; i++) {
//       final char = word[i];
//       if (!temp!.children.containsKey(char)) {
//         temp.children[char] = Node();
//       }
//       temp = temp.children[char];
//     }

//     temp!.isEndofWord = true;
//   }

//   search(String word) {
//     Node? temp = root;
//     for (var i = 0; i < word.length; i++) {
//       final char = word[i];
//       if (!temp!.children.containsKey(char)) {
//         return false;
//       } else {
//         temp = temp.children[char];
//       }
//     }
//     return temp != null;
//   }
// }

// void main() {
//   Trie trie = Trie();

//   trie.insert('apple');
//   trie.insert('orange');
//   trie.insert('grapes');
//   trie.insert('hai');
//   trie.insert('hello');
//   print(trie.search('hai'));
//   print(trie.search('app'));
// }

import '../linkedList/reverse_display.dart';

class Node {
  int? data;
  Node? left;
  Node? right;
  Node(this.data);
}

class Tree {
  Node? root;
  insert(int data) {
    Node? newNode = Node(data);
    if (root == null) {
      root = newNode;
      return;
    }
    Node? temp = root;
    while (true) {
      if (data < temp!.data!) {
        if (temp.left == null) {
          temp.left = newNode;
          break;
        } else {
          temp = temp.left;
        }
      } else {
        if (temp.right == null) {
          temp.right = newNode;
          break;
        } else {
          temp = temp.right;
        }
      }
    }
  }

  inorder(Node? node) {
    if (node == null) return;
    inorder(node.left);
    print(node.data);
    inorder(node.right);
  }

  isValidBst() {
    return isBst(root, double.negativeInfinity, double.infinity);
  }

  isBst(Node? node, double minValue, double Maxvalue) {
    if (node == null) {
      return true;
    }
    if (node.data! <= minValue || node.data! >= Maxvalue) {
      return false;
    }
    return isBst(node.left, minValue, node.data!.toDouble()) &&
        isBst(node.right, node.data!.toDouble(), Maxvalue);
  }
}

void main() {
  Tree tree = Tree();
  tree.insert(30);
  tree.insert(20);
  tree.insert(10);
  tree.insert(40);
  tree.inorder(tree.root);
  print(tree.isValidBst());
}
