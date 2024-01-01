import 'dart:io';

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

void main(List<String> args) {
  final separatorString = stdin.readLineSync() ?? '';
  String inputListString = stdin.readLineSync() ?? '';

  if (inputListString == '' || separatorString == '') {
    return;
  }

  final separator = int.tryParse(separatorString);
  if (separator == null) return;

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

  removeDuplicate(head);
}

void removeDuplicate(ListNode? head) {
  var current = head;
  final list = <int>[];

  ListNode? resultNode, currentNode;
// 1 -> 2 -> 1 -> 3 -> 2

  while (current != null) {
    if (!list.contains(current.val)) {
      // put this to list
      list.add(current.val);

      final newNode = ListNode(current.val);

      if (resultNode == null) {
        resultNode = newNode;
        currentNode = resultNode;
      } else {
        currentNode!.next = newNode;
        currentNode = currentNode.next;
      }
    }

    current = current.next;
  }

  list.clear();

  ListNode? finalNode = resultNode;
  final buffer = StringBuffer();

  while (finalNode != null) {
    buffer.write('${finalNode.val} ');
    finalNode = finalNode.next;
  }
  print(buffer.toString().trim());
}
