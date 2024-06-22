class Node {
  dynamic data;
  int? priority;
  Node(this.priority, this.data);
}

class Minheap {
  List<Node> heap = [];

  insert(Node? node) {
    heap.add(node!);
    heapifyUp(heap.length - 1);
  }

  heapifyUp(int index) {
    while (index > 0) {
      int parentindex = (index - 1) ~/ 2;
      if (heap[parentindex].priority! > heap[index].priority!) {
        swap(parentindex, index);
        index = parentindex;
      } else {
        break;
      }
    }
  }

  heapifyDown(int index) {
    while (true) {
      int left = 2 * index + 1;
      int right = 2 * index + 2;
      int smallest = index;
      if (left < heap.length &&
          heap[left].priority! < heap[smallest].priority!) {
        smallest = left;
      }
      if (right < heap.length &&
          heap[right].priority! < heap[smallest].priority!) {
        smallest = right;
      }
      if (smallest != index) {
        swap(smallest, index);
        index = smallest;
      } else {
        break;
      }
    }
  }

  swap(int index1, int index2) {
    Node temp = heap[index1];
    heap[index1] = heap[index2];
    heap[index2] = temp;
  }

  ExactMin() {
    if (heap.isEmpty) return null;
    Node min = heap.first;
    heap[0] = heap.removeLast();
    heapifyDown(0);
    return min;
  }
}

class priorityQueue {
  Minheap minheap = Minheap();

  enqueue(dynamic data, int priority) {
    Node newNode = Node(priority, data);
    minheap.insert(newNode);
  }

  dequeue() {
    return minheap.ExactMin();
  }
}

void main() {
  priorityQueue priority = priorityQueue();
  priority.enqueue(4, 1);
  priority.enqueue(5, 3);
  priority.enqueue(2, 4);
  priority.enqueue(3, 2);
  print(priority.dequeue().data);
}
