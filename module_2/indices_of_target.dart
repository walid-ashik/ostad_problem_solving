void main() {
  assert(output([2, 7, 11, 5], 9).toString() == [0, 1].toString());
  assert(output([3, 2, 4], 6).toString() == [1, 2].toString());
  assert(output([3, 6], 6).toString() == [1].toString());
  assert(
    output([-1, -2, -5, 3, 4, 0], 2).toString() == [0, 3, 1, 4].toString(),
  );
}

List<int> output(List<int> inputs, int target) {
  var results = <int>[];

  for (var i = 0; i < inputs.length; i++) {
    for (var j = (i + 1); j < inputs.length; j++) {
      if (inputs[i] == target) {
        results.add(i);
        return results;
      }

      if (inputs[j] == target) {
        results.add(j);
        return results;
      }

      if (inputs[i] + inputs[j] == target) {
        results.add(i);
        results.add(j);
      }
    }
  }
  return results;
}
