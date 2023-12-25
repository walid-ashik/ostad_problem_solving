/*
 * Time Complexity - O(n)
 * Space Complexity - O(n)
 */
void main() {
  assert(isPalindrome('') == true);
  assert(isPalindrome('a') == true);
  assert(isPalindrome('adam') == false);
  assert(isPalindrome('madam') == true);
  assert(isPalindrome('racecar') == true);
}

bool isPalindrome(String s) {
  int i = 0;
  int j = s.length - 1;
  return checkPalindrome(s, i, j);
}

bool checkPalindrome(String s, int i, int j) {
  if (i >= j) return true;
  if (s[i] != s[j]) {
    return false;
  }
  return checkPalindrome(s, i + 1, j - 1);
}
