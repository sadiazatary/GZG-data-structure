bool isBalancedParentheses(String input) {
  List<String> stack = [];

  for (int i = 0; i < input.length; i++) {
    String currentChar = input[i];

    if (currentChar == '(') {
      stack.add(currentChar);
    } else if (currentChar == ')') {
      if (stack.isEmpty || stack.removeLast() != '(') {
        return false; // Unbalanced parentheses
      }
    }
  }

  return stack.isEmpty; // If stack is empty, parentheses are balanced
}

void main() {
  String expression1 = "(a + b) * (c - d)";
  String expression2 = "((a + b) * c - d)";

  print("$expression1 is balanced: ${isBalancedParentheses(expression1)}");
  print("$expression2 is balanced: ${isBalancedParentheses(expression2)}");
}
