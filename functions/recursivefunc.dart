String addOn(String original, String additional, int times) {
  if (times <= 0) {
    return original;
  }
  return addOn(original + additional, additional, times - 1); //recursive call
}

void main() {
  print(addOn("Hello", "!", 3));
}
