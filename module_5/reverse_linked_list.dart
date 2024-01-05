import 'dart:io';

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

void main(List<String> args) {
  String dummyInput = stdin.readLineSync() ?? '';
  String inputListString = stdin.readLineSync() ?? '';

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

  reverseList(head);
}

void reverseList(ListNode? head) {
  var current = head;
  ListNode? preNode;
  // 1 2 4 6 7
  while (current != null) {
    ListNode? nextNode = current.next;
    current.next = preNode;
    preNode = current;
    current = nextNode;
  }

  head = preNode;

  ListNode? finalNode = head;
  final buffer = StringBuffer();

  while (finalNode != null) {
    buffer.write('${finalNode.val} ');
    finalNode = finalNode.next;
  }
  print(buffer.toString().trim());
}
