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

  String get firstn => firstname;

  //a method
  Future<String> getSpecies() async {
    //simulate async
    print('Evaluating other conditions...');
    await Future.delayed(Duration(seconds: 2));

    //perform get
    return speci;
  }

  //a method to return firstn
  Future<String> getFirstName() async {
    //simulate async
    Future.delayed(Duration(seconds: 3));
    print('returning firstname');
    return firstn;
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
