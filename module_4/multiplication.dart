/**
 *
 * Time Complexity - O(a)
 * Space Complexity - O(a)
 */

int result = 0;

void main() {
  assert(multiply(4, 5) == 20);
  assert(multiply(10, 5) == 50);
}

int multiply(int a, int b) {
  result = 0;
  return addition(a, b);
}

int addition(int a, int b) {
  if (a == 0) return result;
  result = result + b;
  return addition(a - 1, b);
}
