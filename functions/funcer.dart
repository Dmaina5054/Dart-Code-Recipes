String myName = 'anacron11';
someFunction() {
  String age = '20';
  print(int.parse(age));
  print(myName);
}

int multiplyFunc(int a, int b) {
  return a * b;
}

multiplyAnon(int a, int b) => print(a * b);

void main(List<String> args) {
  someFunction();
  print(myName);
  // int prod = multiplyFunc(4, 7); //functions as first class objects in dart
  print('4  multi 7 is ${multiplyFunc(4, 7)}');
  multiplyAnon(4, 6);
}
