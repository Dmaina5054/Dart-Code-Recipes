import '../classes/HeroClass.dart';

class UltimateHero implements Hero {
  UltimateHero();
  @override
  set firstname(String _firstname) {
    // TODO: implement firstname
    _firstname = 'James';
  }

  @override
  set lastname(String _lastname) {
    // TODO: implement lastname
    _lastname = 'Nderi';
  }

  @override
  Future<String> getSpecies() async {
    // TODO: implement getSpecies

    await Future.delayed(Duration(seconds: 2));
    return 'Human';
  }

  @override
  // TODO: implement speci
  String get speci => speci;

  @override
  // TODO: implement firstname
  String get firstname => firstname;

  @override
  String get lastname => lastname;

  @override
  // TODO: implement firstn
  String get firstn => this.firstname + 'overriden';

  @override
  Future<String> getFirstName() async {
    // TODO: implement getFirstName
    return 'Human';
  }
}

//testing main
main() async {
  UltimateHero myHero = UltimateHero();
  print(await myHero.getSpecies());
  print(await myHero.getFirstName());
}
