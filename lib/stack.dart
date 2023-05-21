// Array Implementation
class StackArr<T> {
  final List<T?> _container;
  int _top = -1;

  StackArr(int size) : _container = List.filled(size, null);

  void push(T item) {
    if (_top < _container.length - 1) {
      _top++;
      _container[_top] = item;
    } else {
      throw StackOverflowError();
    }
  }

  void pop() {
    if (_top > -1) {
      _container[_top] = null;
      _top--;
    } else {
      return;
    }
  }

  String length() => "${_top + 1}";

  @override
  String toString() => "$_container";
}
