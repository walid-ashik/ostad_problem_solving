import 'dart:core';

void main() {
  final result1 = shuffle('mamacode', [4, 5, 6, 7, 0, 1, 2, 3]);
  final result2 = shuffle('dosta', [4, 0, 1, 2, 3]);
  final result3 = shuffle('abc', [1, 0, 2]);

  assert(result1 == 'codemama');
  assert(result2 == 'ostad');
  assert(result3 == 'bac');
}

String shuffle(String input, List<int> lists) {
  final outputs = <String>[];

  for (int i = 0; i < lists.length; i++) {
    final indices = lists[i];
    outputs.insert(indices, "${input[i]}");
  }

  print(outputs.toString());
  return outputs.toString();
}
