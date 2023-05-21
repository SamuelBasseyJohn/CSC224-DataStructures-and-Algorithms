// Array Implementation
import 'dart:io';

class StackArr<T> {
  final List<T?> _container;
  int _top = -1;

  StackArr(int size) : _container = List.filled(size, null);

  void push(T item) {
    if (_top < _container.length - 1) {
      _top++;
      _container[_top] = item;
    } else {
      print("Stack Overflow");
      throw StackOverflowError();
    }
  }

  T? pop() {
    if (_top > -1) {
      T? value = _container[_top];
      _container[_top] = null;
      _top--;
      return value;
    } else {
      print("Stack Underflow");
      exit(1);
    }
  }

  String length() => "${_top + 1}";

  @override
  String toString() => "$_container";
}
