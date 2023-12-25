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
  final map = <int, String>{};
  for (var i = 0; i < input.length; i++) {}
}
