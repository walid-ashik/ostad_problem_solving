/*
 * Complexity = O(n)
 *
 */

void main() {
  assert(result(4) == 24);
  assert(result(5) == 120);
}

int result(int n) {
  int result = 1;

  for (int i = 1; i <= n; i++) {
    result = result * i;
  }
  return result;
}
