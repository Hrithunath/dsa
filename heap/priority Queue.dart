class Node {
  dynamic value;
  int? priority;
  Node(this.value, this.priority);
}

class MinHeap {
  List<Node> heap = [];

  insert(Node node) {
    heap.add(node);
    heapifyUp(heap.length - 1);
  }

  heapifyUp(int index) {
    while (index > 0) {
      int parentIndex = (index - 1) ~/ 2;
      if (heap[parentIndex].priority! > heap[index].priority!) {
        swap(index, parentIndex);
        index = parentIndex;
      }
    }
  }

  heapifyDown(int index) {
    int length = heap.length;
    while (true) {
      int left = 2 * index + 1;
      int right = 2 * index + 2;
      int smallest = index;
      if (left < length && heap[left].priority! < heap[smallest].priority!) {
        smallest = left;
      }
      if (right < length && heap[right].priority! < heap[smallest].priority!) {
        smallest = right;
      }
      if (smallest != index) {
        swap(smallest, index);
        index = smallest;
      }
    }
  }

  

  exactMin() {
    if (heap.isEmpty) return null;
    Node min = heap.first;
    heap[0] = heap.removeLast();
    heapifyDown(0);
    return min;
  }

  swap(int index1, int index2) {
    Node temp = heap[index1];
    heap[index1] = heap[index2];
    heap[index2] = temp;
  }
}

class PriorityQueue {
  MinHeap minHeap = MinHeap();
  Enqueue(dynamic value, int priority) {
    Node newNode = Node(value, priority);
    minHeap.insert(newNode);
  }

  Dequeue() {
    return minHeap.exactMin();
  }
}

void main() {
  PriorityQueue queue = PriorityQueue();
  queue.Enqueue('hello', 3);
  queue.Enqueue('hai', 4);
  queue.Enqueue('hoi', 2);
  queue.Enqueue('hi', 1);
  print(queue.Dequeue().data);
}
