
class stack {
  List<int> arr = [];



  void push(int data) {
    arr.add(data);
  }

  void pop() {
    arr.removeLast();
  }

  void peek() {
    print(arr.last);
  }

  void display() {
    print(arr);
  }
}

void main() {
  stack s = stack();
  s.push(10);
  s.push(20);
  s.push(30);
  s.push(40);
  s.pop();
  s.peek();
  s.display();
}
