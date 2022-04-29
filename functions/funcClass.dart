//will define a function to
//be used in second function
greet(String name) {
  print('$name');
}

//here i will define a class
//to encap my functions
class Greeting {
  //define a method and
  //use earlier greet funtion
  greetAgain({required Function f, String n = "human"}) {
    f(n);
  }
}

main() {
  //creating an instance of my class
  Greeting greeter = new Greeting();
  greet("dan");

  //call second func
  greeter.greetAgain(f: greet, n: "Tracy");

  //default parameter will be used
  greeter.greetAgain(f: greet);
}
