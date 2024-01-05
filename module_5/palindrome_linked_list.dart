import 'dart:io';

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

void main(List<String> args) {
  final dummyInput = stdin.readLineSync() ?? '';
  String inputListString = stdin.readLineSync() ?? '';

  if (inputListString == '' || dummyInput == '') {
    return;
  }

  final list = inputListString.split(' ');

  ListNode? c, head;

  for (int i = 0; i < list.length; i++) {
    int? data = int.tryParse(list[i]);
    if (data == null) return;
    ListNode newNode = ListNode(data);

    if (head == null) {
      head = newNode;
      c = head;
    } else {
      c!.next = newNode;
      c = c.next;
    }
  }

  checkPalindrome(head);
}

void checkPalindrome(ListNode? head) {
  var current = head;
  final list = <int>[];

  while (current != null) {
    list.add(current.val);
    current = current.next;
  }

  // check for list palindrome
  var left = 0;
  var right = list.length - 1;

  while (left <= right) {
    if (list[left] != list[right]) {
      print('NO');
      return;
    }
    left += 1;
    right -= 1;
  }

  print('YES');
}
