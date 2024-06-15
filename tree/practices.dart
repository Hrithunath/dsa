class Node {
  int? data;
  Node? left;
  Node? right;
}

class Trees {
  Node? root = Node();
  insert(int data) {
    Node newNode = Node();
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
}

void main() {
  Trees trees = Trees();
  trees.insert(1);
  trees.insert(2);
  trees.insert(3);
  trees.insert(4);
  trees.insert(5);
  trees.insert(6);
  trees.inorder(trees.root);
}
