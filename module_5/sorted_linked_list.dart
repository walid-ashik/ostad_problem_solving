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

  sortList(head);
}

void sortList(ListNode? head) {
  var current = head;
  int? comparingValue;
  bool isIncreasting = true;

  // 1 3 3 6 7
  while (current != null) {
    if (comparingValue == null) {
      comparingValue = current.val;
    } else {
      if (comparingValue > current.val) {
        isIncreasting = false;
      }
      comparingValue = current.val;
    }
    current = current.next;
  }

  print(isIncreasting ? 'YES' : 'NO');
}
