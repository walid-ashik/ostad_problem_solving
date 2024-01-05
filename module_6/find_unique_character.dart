import 'dart:collection';
import 'dart:io';

void main() {
  // Read the number of test cases
  int T = int.parse(stdin.readLineSync()!);

  List<String> results = [];

  for (int i = 0; i < T; i++) {
    // Read the input string for each test case
    String inputString = stdin.readLineSync()!;

    // Process the input and check if it's valid
    String result = firstRepeatingCharacter(inputString);

    results.add(result);
  }

  print(results.join('\n'));
}

String firstRepeatingCharacter(String inputString) {
  final queue = Queue<String>();
  final frequency = <String, int>{};

  for (int i = 0; i < inputString.length; i++) {
    final char = inputString[i];

    final count = (frequency[char] ?? 0) + 1;
    frequency[char] = count;

    queue.add(char);
  }

  while (queue.isNotEmpty) {
    final char = queue.removeFirst();

    if (frequency[char] == 1) {
      return char;
    }
  }

  return 'N';
}
