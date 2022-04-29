import 'HeroClass.dart';

//test inheritance
class HeroChild extends Hero {
  String firstname;
  String lastname;
  HeroChild(this.firstname, this.lastname) : super(firstname, lastname);

  //define a behavior
  String getSpec() {
    //simulate a delay
    Future.delayed(const Duration(seconds: 3));
    return this.lastname;
  }
}

//defining a main method
//defining a class instance and calling
//method in super class
main() async {
  HeroChild myHeroToo = HeroChild('Daniel', 'Mainaaa');
  print(await myHeroToo.getSpec());
  print(await myHeroToo.getSpecies());
}
