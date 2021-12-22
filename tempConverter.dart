import 'dart:io';

void main() {
  print('A:Convert C to F \n B:Convert F to C');
  String selection;
//as long as the user input is neither A or B
//ask for input
  do {
    selection = stdin.readLineSync()!.toUpperCase();
  } while (selection != "A" && selection != "B");
  print('Enter starting Temp');
  String inTemp = stdin.readLineSync().toString();
  int temp = int.parse(inTemp);

  //introduce switch case
  switch (selection) {
    case "A":
      print("$temp degrees celcius is ${temp * 1.8 + 32} F");
      break;
    case "B":
      print("$temp degrees Fahrenheit is ${(temp - 32) / 1.8}");
      break;
    default:
      break;
  }
}
