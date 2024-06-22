// class Node {
//   int? data;
//   Node? left;
//   Node? right;
//   Node(this.data, {this.left, this.right});
// }

// class Tree {
//   Node? root;
//   void insert(int data) {
//     Node? newNode = Node(data);
//     if (root == null) {
//       root = newNode;
//       return;
//     }
//     Node? temp = root;
//     while (true) {
//       if (data < temp!.data!) {
//         if (temp.left == null) {
//           temp.left = newNode;
//           break;
//         } else {
//           temp = temp.left;
//         }
//       } else {
//         if (temp.right == null) {
//           temp.right = newNode;
//           break;
//         } else {
//           temp = temp.right;
//         }
//       }
//     }
//   }

//   void inOrder(Node? node) {
//     if (node == null) return;
//     inOrder(node.left);
//     print(node.data);
//     inOrder(node.right);
//   }

//   void preOrder(Node? node) {
//     if (node == null) return;
//     print(node.data);
//     preOrder(node.left);
//     preOrder(node.right);
//   }

//   bool contains(dynamic data) {
//     Node? temp = root;
//     while (temp != null) {
//       if (data < temp.data) {
//         temp = temp.left;
//       } else if (data > temp.data) {
//         temp = temp.right;
//       } else {
//         return false;
//       }
//     }
//     return true;
//   }

// bool isValidBST(Node? root) {
//   return isBST(root, double.negativeInfinity, double.maxFinite);
// }

// bool isBST(Node? node, double minValue, double MaxValue) {
//   if (node == null) {
//     return true;
//   }
//   if (node.data! <= minValue || node.data! >= MaxValue) {
//     return false;
//   }
//   return isBST(node.left, minValue, node.data!.toDouble()) &&
//       isBST(node.right, node.data!.toDouble(), MaxValue);
// }

//   void remove(int data) {
//     root = _remove(root, data);
//   }

//   Node? _remove(Node? node, int data) {
//     if (node == null) {
//       return null;
//     }
//     if (data < node.data!) {
//       node.left = _remove(node.left, data);
//     } else if (data > node.data!) {
//       node.right = _remove(node.right, data);
//     } else {
//       if (node.left == null) {
//         return node.right;
//       } else if (node.right == null) {
//         return node.left;
//       }
//       node.data = _minvalue(node.right);
//       node.right = _remove(node.right, node.data!);
//     }
//     return node;
//   }

// int? _minvalue(Node? node) {
//   int minvalue = node!.data!;
//   while (node!.left != null) {
//     node = node.left;
//     minvalue = node!.data!;
//   }
//   return minvalue;
// }

// int height() {
//   return calculateHeight(root);
// }

// calculateHeight(Node? node) {
//   if (node == null) {
//     return 0;
//   }
//   int left = calculateHeight(node.left);
//   int right = calculateHeight(node.right);
//   return 1 + (left < right ? right : left);
// }
// }

// ignore_for_file: unused_element

// void main() {
//   Tree tree = Tree();
//   tree.insert(4);
//   tree.insert(5);
//   tree.insert(6);
//   tree.insert(1);
//   tree.insert(3);
//   tree.insert(2);
//   // tree.inOrder(tree.root);
//   // tree.preOrder(tree.root);
//   print(tree.contains(3));
//   Node root = Node(2, left: Node(1), right: Node(3));
//   print(tree.isValidBST(root));
//   tree.remove(1);
//   tree.inOrder(tree.root);
//  print(bst.height());
// }
class Node {
  int? data;
  Node? left;
  Node? right;
  Node(this.data);
}

class BST {
  Node? root;
  void insert(int data) {
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

  void inorder(Node? node) {
    if (node == null) return;
    inorder(node.left);
    print(node.data);
    inorder(node.right);
  }

  // bool isValidBST(Node? root) {
//   return isBST(root, double.negativeInfinity, double.maxFinite);
// }

// bool isBST(Node? node, double minValue, double MaxValue) {
//   if (node == null) {
//     return true;
//   }
//   if (node.data! <= minValue || node.data! >= MaxValue) {
//     return false;
//   }
//   return isBST(node.left, minValue, node.data!.toDouble()) &&
//       isBST(node.right, node.data!.toDouble(), MaxValue);
// }

  isValidBST(Node? root) {
    return isBSt(root, double.negativeInfinity, double.infinity);
  }

  isBSt(Node? node, double minvalue, double maxvalue) {
    if (node == null) {
      return true;
    }
    if (node.data! <= minvalue || node.data! >= maxvalue) {
      return false;
    }
    return isBSt(node.left, minvalue, node.data!.toDouble()) &&
        isBSt(node.right, node.data!.toDouble(), maxvalue);
  }

  bool contains(int data) {
    Node? temp = root;
    while (temp != null) {
      if (data < temp.data!) {
        temp = temp.left;
      } else if (data > temp.data!) {
        temp = temp.right;
      } else {
        return true;
      }
    }
    return false;
  }

  height() {
    return ContainsHeight(root);
  }

  ContainsHeight(Node? node) {
    if (node == null) {
      return 0;
    }
    int left = ContainsHeight(node.left);
    int right = ContainsHeight(node.right);
    return 1 + (left < right ? left : right);
  }
}

void main() {
  BST bst = BST();
  bst.insert(2);
  bst.insert(4);
  bst.insert(1);
  bst.insert(5);
  bst.insert(3);
  bst.inorder(bst.root);
  print(bst.contains(3));
  print(bst.isValidBST(bst.root));
  print(bst.height());
}
