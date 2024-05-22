// class Node {
//   int? data;
//   Node? next;
//   Node(this.data);
// }

// class LinkedList {
//   Node? head;
//   Node? tail;

//   void addNote(int data) {
//     Node newNode = Node(data);
//     if (head == null) {
//       head = newNode;
//     } else {
//       tail?.next = newNode;
//     }
//     tail = newNode;
//   }

//   void delteNode(int target) {
//     Node? temp = head;
//     Node? prev;
//     if (head?.data == target) {
//       head = head?.next;
//     }
//     while (temp != null) {
//       if (temp.data == target) {
//         break;
//       }

//       temp = temp.next;
//     }
    
//     prev?.next = temp?.next;
//   }
  

//   void display() {
//     Node? temp = head;
//     if (head == null) {
//       print('Empty');
//     }
//     while (temp != null) {
//       print(temp.data);
//       temp = temp.next;
//     }
//   }
// }

// void main() {
//   LinkedList list = LinkedList();
//   list.addNote(10);
//   list.addNote(20);
//   list.addNote(30);
//   list.addNote(40);
//   list.delteNode(20);
//   list.display();
// }

class Node{
  int? data;
 Node? next;
  Node? prev;

  Node(int data){
  (this.data = data);
  }
}

class DlinkedList{
  Node? head;
  Node ?tail;


 void adding(int data){
    Node newNode =Node(data);

    if(head==null){
      head = newNode;
    }else{
      tail?.next= newNode;
      newNode.prev=tail;
    }
    tail=newNode;
 }


 void display(){
  Node? temp = head;

  while(temp!=null){
    print(temp.data);
    temp = temp.next;
  }
 }
 void displayReverse(){
  Node? temp = tail;

  while(temp!=null){
    print(temp.data);
    temp=temp.prev;
  }
 }

 void insertBefore(int data,int target ){
  Node newNode =Node(data);
    Node? temp = head;
   if ( head?.data==target) {
    
     newNode.next=head;
     head?.prev = newNode;
     head = newNode;
     return;

   }

   while(temp!=null ){
     
    if(temp.data==target){
      break;
    }
    temp=temp.next;
    
   }
   if(temp==null){
    return;
   }
   newNode.next=temp;
     newNode.prev =temp.prev;
    //  if(temp.prev!=null){
        temp.prev?.next=newNode;
    //  }
     temp.prev=newNode;
   
 }
void insertAfter(int data,target){
  Node newNode = Node(data);

  Node? temp = head;
  while(temp !=null ){
    if(temp.data==target){
      break;

    }   
  }
    newNode.next = temp?.next;
    newNode.prev = temp;
    temp?.next = newNode;
    temp?.next?.prev= newNode;

    if(tail == target){
      tail?.next = newNode;
      newNode.prev=tail;
      tail=newNode;

    }
}

}


void main(){
  DlinkedList list = DlinkedList();
  list.adding(10);
  list.adding(20);
  list.adding(30);
  list.adding(4);
  list.adding(5);
  list.insertBefore(25, 10);
  list.insertAfter(6, 5);
  list.display();
  // list.displayReverse();
}
