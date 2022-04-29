class Hero {
  String firstName;
  String lastName;
  String get getFullName => '$firstName $lastName';
  set setFullName(fn) {
    firstName = fn;
  }

  //constructor
  Hero(this.firstName, this.lastName) {}

  //method
  String sayName() {
    return '$firstName $lastName';
  }
}

void main() {
  Hero h = new Hero('Jamed', 'likeman');
  //print(h.sayName());

  h.setFullName = "Daniel mainas";
  print(h.getFullName);
}
