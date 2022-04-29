class Hero {}

mixin Avenger {
  bool yieldsFire = false;
  bool hasMuscle = false;
  bool hasTatoo = true;

  //implement some behavior
  //to test mixin capability
  whichAvenger() {
    if (yieldsFire) {
      print('Emits Fire');
    } else if (hasMuscle) {
      print('Has muscle');
    } else if (hasTatoo) {
      print('Has tatoo');
    }
  }
}

//inherit and add a mixin
class SuperHero extends Hero with Avenger {}

main() {
  SuperHero myhero = new SuperHero();

  //call a property on the new classs
  myhero.whichAvenger();
}
