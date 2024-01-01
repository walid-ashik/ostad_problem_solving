import 'dart:io';

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

void main(List<String> args) {
  String rangeString = stdin.readLineSync() ?? '';
  String inputListString = stdin.readLineSync() ?? '';
  final separatorString = stdin.readLineSync() ?? '';

  if (rangeString == '' || inputListString == '' || separatorString == '') {
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

  ListNode? currentNode = head;
  ListNode? greaterNode, lowerNode, currentGreaterNode, currentLowerNode;

  while (currentNode != null) {
    final newNode = ListNode(currentNode.val);

    if (newNode.val < separator) {
      if (lowerNode == null) {
        lowerNode = newNode;
        currentLowerNode = lowerNode;
      } else {
        currentLowerNode!.next = newNode;
        currentLowerNode = currentLowerNode.next;
      }
    } else {
      if (greaterNode == null) {
        greaterNode = newNode;
        currentGreaterNode = greaterNode;
      } else {
        currentGreaterNode!.next = newNode;
        currentGreaterNode = currentGreaterNode.next;
      }
    }
    currentNode = currentNode.next;
  }

  if (lowerNode != null) {
    currentLowerNode?.next = greaterNode;
  } else {
    lowerNode = greaterNode;
  }

  ListNode? finalNode = lowerNode;
  final buffer = StringBuffer();

  while (finalNode != null) {
    buffer.write('${finalNode.val} ');
    finalNode = finalNode.next;
  }
  print(buffer.toString());
}

/*
ListNode getHeadNodeAndSeparator() {
  String rangeString = stdin.readLineSync() ?? '';
  String inputListString = stdin.readLineSync() ?? '';
  separator = int.parse(stdin.readLineSync() ?? '0');
  final list = inputListString.split(' ');

  ListNode? currentNode, head;

  for (int i = 0; i < list.length; i++) {
    int data = int.parse(list[i]);
    ListNode newNode = ListNode(data);

    if (head == null) {
      head = newNode;
      currentNode = head;
    } else {
      currentNode!.next = newNode;
      currentNode = currentNode.next;
    }
  }
  return head!;
}
*/
