import 'dart:math';
import 'dart:io';

//get a player move via keyboard
//if the player fails to enter a valid mov
//return quit so that the main game loop
//knows to end the game

String getPlayerMove() {
  print("Would you like (R)ock, (P)aper or (S)cissors?");
  String selection = stdin.readLineSync().toString();

  //implement switch case to implement move based on player selection
  //allow user to play
  switch (selection) {
    case ("R"):
      return "Rock";
      break;
    case ("P"):
      return "Paper";
      break;
    case ("S"):
      return "Scissors";
      break;
    default:
      return "Quit"; //if anything else end
  }
}

//here we implement game play logic
//in the form of Rock, Paper, Scissors
//allow computer to play

getComputerMove() {
  Random rand = Random();
  int move = rand.nextInt(3); //random int from 0-2

  //use case stmt to determine move yields to what
  switch (move) {
    case 0:
      return "Rock";
      break;
    case 1:
      return "Paper";
      break;
    case 2:
      return "Scissors";
      break;
    default:
      break;
  }
}

//Determine who won the game
//need to compare player move with computer move
//we have explicitly defined types of win for our human xters
String whoWon(String playerMove, String computerMove) {
  if (playerMove == computerMove) {
    return "Tie!";
  } else if (playerMove == "Rock" && computerMove == "Scissors") {
    return "You Won!";
  } else if (playerMove == "Scissors" && computerMove == "Paper") {
    return "You Won!";
  } else if (playerMove == "paper" && computerMove == "Rock") {
    return "You Won!";
  } else {
    //if no tie and you did not win..comp won
    return "Computer Won!";
  }
}

//defining main
void main() {
  while (true) {
    //creates an infinite loop
    print("Rock, Paper, Scissors Shoot!!");
    String playerMove = getPlayerMove();

    if (playerMove == "Quit") {
      return; //returning from void functio exits it
    }

    print("You have played $playerMove");
    String computerMove = getComputerMove();
    print("Computer Played $computerMove");

    //who won evaluating
    print(whoWon(playerMove, computerMove));
  }
}
