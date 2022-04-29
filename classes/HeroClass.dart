//defining a class
class Hero {
  //some attributes
  String firstname;
  String lastname;
  //static field does not require class initialization
  static String species = 'He is Human';

  //constructor
  Hero(this.firstname, this.lastname);

  String get speci => species;

  //a method
  Future<String> getSpecies() async {
    //simulate async
    print('Evaluating other conditions...');
    await Future.delayed(Duration(seconds: 2));

    //perform get
    return speci;
  }
}

//defining main

main() async {
  //initializing hero class
  Hero myHero = Hero('James', 'Legend');

  //testing async

  String specie = await myHero.getSpecies();
  print('Generating species...');
  print(specie);
  print('Call complete');
}
