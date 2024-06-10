class MaxHeap {
  List<int> heap = [];

  void insert(int value) {
    heap.add(value);
    _heapifyUp(heap.length - 1);
  }

  int? extractMax() {
    if (heap.isEmpty) return null;
    int max = heap.first;
    heap[0] = heap.removeLast();
    _heapifyDown(0);
    return max;
  }

  void _heapifyUp(int index) {
    int parentIndex = (index - 1) ~/ 2;
    if (index > 0 && heap[index] > heap[parentIndex]) {
      _swap(index, parentIndex);
      _heapifyUp(parentIndex);
    }
  }

  void _heapifyDown(int index) {
    int leftChild = 2 * index + 1;
    int rightChild = 2 * index + 2;
    int largest = index;

    if (leftChild < heap.length && heap[leftChild] > heap[largest]) {
      largest = leftChild;
    }

    if (rightChild < heap.length && heap[rightChild] > heap[largest]) {
      largest = rightChild;
    }

    if (largest != index) {
      _swap(index, largest);
      _heapifyDown(largest);
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

  int? peek() {
    if (heap.isEmpty) return null;
    return heap.first;
  }
}

void main() {
  MaxHeap heap = MaxHeap();
  heap.insert(10);
  heap.insert(5);
  heap.insert(20);
  heap.insert(1);

  print(heap.extractMax()); // 20
  print(heap.extractMax()); // 10
  print(heap.extractMax()); // 5
  print(heap.extractMax()); // 1
  print(heap.extractMax()); // null (empty heap)
}
