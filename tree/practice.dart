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

  void preOrder(Node? node) {
    if (node == null) return;
    print(node.data);
    preOrder(node.left);
    preOrder(node.right);
  }

  void postorder(Node) {}
}

void main() {
  BST bst = BST();
  bst.insert(10);
  bst.insert(90);
  bst.insert(60);
  bst.insert(4);
  bst.inorder(bst.root);
  bst.preOrder(bst.root);
}
