class MinHeap {
  List<int> heap = [];

  void insert(int value) {
    heap.add(value);
    _heapifyUp(heap.length - 1);
  }

 

  void _heapifyUp(int index) {
    int parentIndex = (index - 1) ~/ 2;
    if (index > 0 && heap[index] < heap[parentIndex]) {
      _swap(index, parentIndex);
      _heapifyUp(parentIndex);
    }
  }

  void _heapifyDown(int index) {
    int leftChild = 2 * index + 1;
    int rightChild = 2 * index + 2;
    int smallest = index;

    if (leftChild < heap.length && heap[leftChild] < heap[smallest]) {
      smallest = leftChild;
    }

    if (rightChild < heap.length && heap[rightChild] < heap[smallest]) {
      smallest = rightChild;
    }

    if (smallest != index) {
      _swap(index, smallest);
      _heapifyDown(smallest);
    }
  }

  void _swap(int index1, int index2) {
    int temp = heap[index1];
    heap[index1] = heap[index2];
    heap[index2] = temp;
  }

  bool isEmpty() {
    return heap.isEmpty;
  }

   int? extractMin() {
    if (heap.isEmpty) return null;
    int min = heap.first;
    heap[0] = heap.removeLast();
    _heapifyDown(0);
    return min;
  }

  int? peek() {
    if (heap.isEmpty) return null;
    return heap.first;
  }
}

void main() {
  MinHeap heap = MinHeap();
  heap.insert(10);
  heap.insert(5);
  heap.insert(20);
  heap.insert(1);

  print(heap.extractMin()); // 1
  print(heap.extractMin()); // 5
  print(heap.extractMin()); // 10
  print(heap.extractMin()); // 20
  print(heap.extractMin()); // null (empty heap)
}