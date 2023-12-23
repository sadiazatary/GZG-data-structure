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

void removeAllOccurrences(LinkedList list, int target) {
  Node? current = list.head;
  Node? prev = null;

  while (current != null) {
    if (current.data == target) {
      if (prev == null) {
        list.head = current.next;
      } else {
        prev.next = current.next;
      }
    } else {
      prev = current;
    }

    current = current.next;
  }
}

void main() {
  LinkedList list = LinkedList();
  list.add(1);
  list.add(2);
  list.add(3);
  list.add(2);
  list.add(4);

  print("Original List:");
  list.printList();
  removeAllOccurrences(list, 2);
  print("List after removing all occurrences of 2:");
  list.printList();
}
