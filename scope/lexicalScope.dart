bool topLevel = true;

//defining a closure func
remember(int Number) {
  return () => print(Number);
}

main() {
  //testing if closure works
  var jennu = remember(2313);
  //now jennu has lexical scope of remember
  jennu(); //will print int even if not passed
  var insideMain = true;
  myFunction() {
    var insideFunction = true;

    nestedFunction() {
      //this func can used any parameter
      //defined in the top scope
      var insideNestedFunction = true;
      assert(topLevel);
      assert(insideMain);
      assert(insideFunction);
      assert(insideNestedFunction);
    }
  }
}
