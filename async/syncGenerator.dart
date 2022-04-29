Iterable<int> countTo(int max) sync* {
  int i = 0;
  while (i <= max) yield i++; //yield adds the value to Iterable
}

main() {
  ///initialize our iterable
  Iterable it = countTo(10);
  //extract an iterator
  Iterator i = it.iterator;
  //check if we can continue to lazy print
  while (i.moveNext()) {
    print(i.current);
  }
}
