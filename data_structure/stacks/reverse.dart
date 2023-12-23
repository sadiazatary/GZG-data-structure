
void reverseList(List<int> list) {
  // Use a stack to reverse the list
  List<int> stack = [];

  for (int element in list) {
    stack.add(element);
  }

  while (stack.isNotEmpty) {
    print(stack.removeLast());
  }
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  print("Original List:");
  print(numbers);
  print("Reversed List:");
  reverseList(numbers);
}
