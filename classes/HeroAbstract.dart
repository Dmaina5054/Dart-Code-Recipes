abstract class HeroAbstract {
  String firstname;
  HeroAbstract(this.firstname);
  //some method

  olympian() {
    print('i am an olympian');
  }
}

class HeroWidget implements HeroAbstract {
  @override
  set firstname(String _firstname) {
    // TODO: implement firstname
    this.firstname = _firstname;
  }

  @override
  olympian() {
    // TODO: implement olympian
    print('I am olympian too');
  }

  @override
  // TODO: implement firstname
  String get firstname => 'Mhesh';
}

void main() {
  HeroWidget myHero = HeroWidget();
  myHero.olympian();
  print(myHero.firstname);
}
