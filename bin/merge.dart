import 'package:dsa_implementations/stack.dart';

void main(List<String> args) {
  var pages = StackArr<String>(5);
  print(pages);
  print(pages.length());
  pages.pop();
}
