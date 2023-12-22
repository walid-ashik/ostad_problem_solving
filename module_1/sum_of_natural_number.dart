import 'dart:math';

/*
 * Complexity = O(n)
 *
 */

void main() {
  assert(sum(1, 4) == 10);
  assert(sum(10, 6) == 40);
}

int sum(int a, int b) {
  int max_value = max(a, b);
  int min_value = min(a, b);

  int sum = 0;

  for (int i = min_value; i <= max_value; i++) {
    sum += i;
  }

  return sum;
}
