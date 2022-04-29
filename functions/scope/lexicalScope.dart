bool topLevel = true;

main() {
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
