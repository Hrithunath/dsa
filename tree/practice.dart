class Node {
  int? data;
  Node? left;
  Node? right;

  Node(this.data);
}

class BST {
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

  height() {
    return calculateHeight(root);
  }

  calculateHeight(Node? node) {
    if (node == null) {
      return 0;
    }
    int left = calculateHeight(node.left);
    int right = calculateHeight(node.right);
    return 1 + (left < right ? right : left);
  }

  
}

void main() {
  BST bst = BST();
  bst.insert(30);
  bst.insert(40);
  bst.insert(20);
  bst.insert(10);
  bst.insert(60);
  bst.insert(50);
  bst.inorder(bst.root);
  print(bst.height());
}
