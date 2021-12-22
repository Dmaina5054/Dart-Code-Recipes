void repeat(String word, [int rept = 1, String exclamation = ""]) {
  for (int i = 0; i <= rept; i++) {
    print(word + exclamation);
  }
}

void main() {
  //repeat('Animal');
  repeat('Animal', 2, '!');
}
