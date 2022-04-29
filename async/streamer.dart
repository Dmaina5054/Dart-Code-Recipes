Stream StreamStat() async* {
  for (int i = 0; i <= 10; i++) {
    //simulate an long running op
    await Future.delayed(Duration(seconds: 3));

    yield i;
  }
}

//now define main entry
main() {
  Stream myStream = StreamStat();
  myStream.listen((event) {
    print(event);
  });
}
