class Node {
  int data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;

  void add(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      Node? current = head;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = newNode;
    }
  }

  void printList() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void reverseLinkedList(LinkedList list) {
  Node? prev = null;
  Node? current = list.head;
  Node? nextNode;

  while (current != null) {
    nextNode = current.next;
    current.next = prev;
    prev = current;
    current = nextNode;
  }

  list.head = prev;
}

void main() {
  LinkedList list = LinkedList();
  list.add(1);
  list.add(2);
  list.add(3);
  list.add(4);

  print("Original List:");
  list.printList();
  reverseLinkedList(list);
  print("Reversed List:");
  list.printList();
}
