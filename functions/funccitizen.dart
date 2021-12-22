void talkAbout(String toShout, shoutFunc) {
  print(shoutFunc(toShout));
}

String exclame(String toExclame) =>
    toExclame + '!'; //this func will only add ! to arg

String manyTalk(String toMany) {
  String allTogether = "appended...";
  for (int i = 0; i < 10; i++) {
    allTogether = allTogether + toMany;
  }
  return allTogether;
}

void main() {
  talkAbout("Hello", exclame);
  //talkAbout("Hey", (String s) => print(s.toUpperCase()));
  talkAbout("TicToc", manyTalk);
}
