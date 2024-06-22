class MinHeap {
  List<int> heap = [];

  insert(int data) {
    heap.add(data);
    heapifyUp(heap.length - 1);
  }

  heapifyUp(int index) {
    while (index > 0) {
      int parentindex = (index - 1) ~/ 2;
      if (heap[parentindex] > heap[index]) {
        swap(index, parentindex);
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
      if (left < heap.length && heap[left] < heap[smallest]) {
        smallest = left;
      }
      if (right < heap.length && heap[right] < heap[smallest]) {
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

  exactMin() {
    if (heap.isEmpty) return null;
    int min = heap.first;
    heap[0] = heap.removeLast();
    heapifyDown(0);
    return min;
  }

  swap(int index1, int index2) {
    int temp = heap[index1];
    heap[index1] = heap[index2];
    heap[index2] = temp;
  }
}

void main() {
  MinHeap minHeap = MinHeap();
  minHeap.insert(30);
  minHeap.insert(20);
  minHeap.insert(10);
  minHeap.insert(40);
  print(minHeap.exactMin());
  print(minHeap.heap);
}
