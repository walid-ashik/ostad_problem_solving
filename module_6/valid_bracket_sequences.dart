import 'dart:io';

Map<String, String> parenthesis = {
  '(': ')',
  '{': '}',
  '[': ']',
};

void main() {
  // Read the number of test cases
  int T = int.parse(stdin.readLineSync()!);

  List<String> results = [];

  for (int i = 0; i < T; i++) {
    // Read the input string for each test case
    String inputString = stdin.readLineSync()!;

    // Process the input and check if it's valid
    String result = isValidString(inputString) ? "Valid" : "Not valid";

    results.add(result);
  }

  print(results.join('\n'));
}

bool isValidString(String inputString) {
  final List<String> stack = [];

  for (int i = 0; i < inputString.length; i++) {
    final char = inputString[i];

    // opening parenthesis
    if (parenthesis.keys.contains(char)) {
      stack.add(char);
    } else if (parenthesis.values.contains(char)) {
      if (stack.isEmpty || char != parenthesis[stack.removeLast()]) {
        return false;
      }
    }
  }

  return stack.isEmpty;
}
