class Node<T> {
  Node(this.value);
  T? value;
  Node<T>? next;
}

/// An Efficient DataStructure for Storing data
class LinkedList<S> {
  Node<S> head = Node(null);
  Node<S>? currentNode;

  LinkedList();

  /// Inserts an item at end of the Linked List
  void add(S newData) {
    Node<S> newNode = Node(newData);
    if (head.next != null) {
      currentNode = head.next;
      while (currentNode!.next != null) {
        currentNode = currentNode!.next;
      }
      currentNode!.next = newNode;
    } else {
      head.next = newNode;
    }
  }

  /// Insert an item at beginning of the Linked List
  void addAtBeginning(S newFirstData) {
    Node<S> newFirstNode = Node(newFirstData);
    if (head.next != null) {
      newFirstNode.next = head.next;
      head.next = newFirstNode;
    } else {
      head.next = newFirstNode;
    }
  }

  /// Returns the very first item in the Linked List
  S? first() => head.next?.value;

  /// Adds an item at a particular index in the Linked List
  void addAtIndex(int index, S newData) {
    int position = 0;
    Node<S> newNode = Node(newData);
    currentNode = head.next;
    while (currentNode != null) {
      if (position == index - 1) {
        newNode.next = currentNode!.next;
        currentNode!.next = newNode;
      }
      currentNode = currentNode!.next;
      position++;
    }
  }

  /// Removes an item at a specified index from the Linked List
  void deleteAtIndex(int index) {
    int position = 0;
    Node<S> previousNode = Node(null);
    currentNode = head.next;
    if (index == 0) {
      head.next = currentNode!.next;
      return;
    }

    while (currentNode != null) {
      if (position == index - 1) {
        previousNode = currentNode!;
      }
      if (position == index) {
        previousNode.next = currentNode!.next;
      }
      currentNode = currentNode!.next;
      position++;
    }
  }

  /// Returns the total number of items in the Linked List
  int length() {
    int length = 0;
    currentNode = head.next;
    while (currentNode != null) {
      length++;
      currentNode = currentNode!.next;
    }
    return length;
  }

  /// A much easier way of viewing all items in the list.
  // TODO: Implement toString()
  void printItems() {
    currentNode = head.next;
    do {
      print(currentNode!.value);
      currentNode = currentNode!.next;
    } while (currentNode != null);
  }
}
