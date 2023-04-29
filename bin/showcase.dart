import 'package:dsa_implementations/singly_linked_list.dart';

void main(List<String> arguments) {
  LinkedList<String> members = LinkedList();
  members.add("Samuel");
  members.add("Bassey");
  members.printItems();
  print('-------------------');
  members.addAtBeginning("John");
  members.printItems();
  print('-------------------');
  members.addAtIndex(2, "Leumas");
  members.printItems();
  print('-------------------');
  members.deleteAtIndex(0);
  members.printItems();
}
