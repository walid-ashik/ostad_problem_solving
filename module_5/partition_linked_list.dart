import 'dart:io';

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

void main(List<String> args) {
  (ListNode, int) input = getHeadNodeAndSeparator();

  final head = input.$1;

  ListNode? currentNode = head;

  while (currentNode != null) {
    print(currentNode.val);
    currentNode = currentNode.next;
  }
}

(ListNode head, int separator) getHeadNodeAndSeparator() {
  int listRange = int.parse(stdin.readLineSync() ?? '0');
  String inputListString = stdin.readLineSync() ?? '';
  int seperator = int.parse(stdin.readLineSync() ?? '0');
  final list = inputListString.split(' ');

  ListNode? currentNode, head;

  print('creating nodes');

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
  return (head!, seperator);
}
