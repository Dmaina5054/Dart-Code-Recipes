import 'HeroClass.dart';

//test inheritance
class HeroChild extends Hero {
  String firstname;
  String lastname;
  int age;
  String get fullName => "$firstname $lastname";

  HeroChild(this.firstname, this.lastname, this.age)
      : super(firstname, lastname);

  //define a behavior
  String getSpec() {
    //simulate a delay
    Future.delayed(const Duration(seconds: 3));
    return '${this.firstname} is ${this.age}';
  }
}

//defining a main method
//defining a class instance and calling
//method in super class
main() async {
  HeroChild myHeroToo = HeroChild('Daniel', 'Mainaaa', 20);
  print(await myHeroToo.getSpec());
  print(await myHeroToo.getSpecies());
  print(myHeroToo.fullName);
}
