class C {
  String showFirst<String>(List<String> lst) {
    String item = lst[0];
    if (item is num) {
      print("It's a number");
    }
    print(item);
    return item;
  }
}

main() async {
  C c = new C();
  c.showFirst(<String>["Java", "Dart"]);
  c.showFirst(<num>[23, 66]);
}
