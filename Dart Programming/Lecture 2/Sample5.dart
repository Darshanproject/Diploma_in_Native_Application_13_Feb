/*
Syntax;
switch(exp){
  case 1:
    stat
    break;
  default:
    stat;
    break;
}
*/
import 'dart:io';

void main(){
  var days;
  print("enter your day here : ");
  days = int.parse(stdin.readLineSync()!);
  switch (days) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thurday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid Input");
      break;
  }
}