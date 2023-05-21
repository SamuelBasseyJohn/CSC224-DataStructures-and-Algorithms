import 'package:dsa_implementations/stack.dart';

void main(List<String> args) {
  var pages = Stack<String>(5);
  print(pages);
  print(pages.length());
  pages.push("Page 1");
  pages.push("Page 2");
  print(pages);
  print(pages.length());
  pages.pop();
  print(pages);
  print(pages.length());
  pages.push("Page 3");
  pages.push("Page 4");
  pages.push("Page 5");
  pages.push("Page 6");
  print(pages);
  print(pages.length());
  pages.push("Page 7");
  pages.push("Page 8");
}
