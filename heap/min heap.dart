// class MinHeap {
//   List<int> heap = [];
//   insert(int data) {
//     heap.add(data);
//     heapifyUp(heap.length - 1);
//   }

//   heapifyUp(int index) {
//     while (index > 0) {
//       int parentIndex = (index - 1) ~/ 2;
//       if (heap[parentIndex] > heap[index]) {
//         swap(parentIndex, index);
//         index = parentIndex;
//       } else {
//         break;
//       }
//     }
//   }

//   heapifyDown(int index) {
//     int length = heap.length;
//     while (true) {
//       int leftchild = 2 * index + 1;
//       int rightchild = 2 * index + 2;
//       int smallest = index;
//       if (leftchild < length && heap[leftchild] < heap[smallest]) {
//         smallest = leftchild;
//       }
//       if (rightchild < length && heap[rightchild] < heap[smallest]) {
//         smallest = rightchild;
//       }
//       if (smallest != index) {
//         swap(index, smallest);
//         index = smallest;
//       } else {
//         break;
//       }
//     }
//   }

//   swap(int index1, int index2) {
//     int temp = heap[index1];
//     heap[index1] = heap[index2];
//     heap[index2] = temp;
//   }

//   int? extractmin() {
//     if (heap.isEmpty) return null;
//     int min = heap.first;
//     heap[0] = heap.removeLast();
//     heapifyDown(0);
//     return min;
//   }
// }

// void main() {
//   MinHeap MH = MinHeap();
//   MH.insert(7);
//   MH.insert(4);
//   MH.insert(8);
//   MH.insert(6);
//   MH.insert(3);
//   print(MH.heap);
//   print(MH.extractmin());
//   print(MH.heap);
// }
class MinHeap {
  List<int> heap = [];

  insert(int data) {
    heap.add(data);
    heapifyup(heap.length - 1);
  }

  heapifyup(int index) {
    while (index > 0) {
      int parentIndex = (index - 1) ~/ 2;
      if (heap[parentIndex] > heap[index]) {
        swap(index, parentIndex);
        index = parentIndex;
      } else {
        break;
      }
    }
  }

  heapifyDown(int index) {
    int length = heap.length;
    while (true) {
      int LeftChild = 2 * index + 1;
      int RightChild = 2 * index + 2;
      int smallest = index;
      if (LeftChild < length && heap[LeftChild] < heap[smallest]) {
        smallest = LeftChild;
      }
      if (RightChild < length && heap[RightChild] < heap[smallest]) {
        smallest = RightChild;
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
    int temp = heap[index1];
    heap[index1] = heap[index2];
    heap[index2] = temp;
  }

  removeMin() {
    if (heap.isEmpty) return null;
    int min = heap.first;
    heap[0] = heap.removeLast();
    heapifyDown(0);
    return min;
  }
}

void main() {
  MinHeap heap = MinHeap();
  heap.insert(10);
  heap.insert(20);
  heap.insert(30);
  heap.insert(40);
  heap.insert(50);

  print(heap.heap);
  print(heap.removeMin());
  print(heap.heap);
}
