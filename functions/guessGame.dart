import 'dart:math';
import 'dart:io';

void main() {
  int guess;
  int count = 0;
  Random rand = new Random(); //create random no gen
  int answer = rand.nextInt(100); //get a random int 0-100
  do {
    print("Enter your Guess");
    String temp = stdin.readLineSync().toString(); //read keyboard input
    count++;
    guess = int.parse(temp);
    if (guess > answer) {
      print('Too high!');
    } else if (guess < answer) {
      print('Too Low');
    }
  } while (guess != answer);
  print("FOund it after $count times");
}
