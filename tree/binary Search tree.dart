// class Node {
//   int? data;
//   Node? left;
//   Node? right;
//   Node(this.data);
// }

// class Bst {
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

//   void postOrder(Node? node) {
//     if (node == null) return;
//     postOrder(node.left);
//     postOrder(node.right);
//     print(node.data);
//   }
// }

// void main() {
//   Bst bs = Bst();
//   bs.insert(10);
//   bs.insert(40);
//   bs.insert(50);
//   bs.insert(20);
//   bs.insert(70);
//   bs.inOrder(bs.root);
//   bs.preOrder(bs.root);
//   bs.postOrder(bs.root);
// }

class Node {
  int? data;
  Node? left;
  Node? right;
  Node(this.data);
}

class Tree {
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

  void inOrder(Node? node) {
    if (node == null) return;
    inOrder(node.left);
    print(node.data);
    inOrder(node.right);
  }

  void preOrder(Node? node) {
    if (node == null) return;
    print(node.data);
    preOrder(node.left);
    preOrder(node.right);
  }
}

void main() {
  Tree tree = Tree();
  tree.insert(4);
  tree.insert(5);
  tree.insert(6);
  tree.insert(1);
  tree.insert(3);
  tree.insert(2);
  // tree.inOrder(tree.root);
  tree.preOrder(tree.root);
}
