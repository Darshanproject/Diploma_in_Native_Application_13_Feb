import 'dart:io';

int math(){
  var choice,num1,num2,ans;
  print("Enter your First number here : ");
  num1 = int.parse(stdin.readLineSync()!);
  print("Enter your Second number here : ");
  num2 = int.parse(stdin.readLineSync()!);
  print("Choice what you want to perform");
  print("1 for sum");
  print("2 for sub");
  print("3 for mul");
  print("4 for Div");
  print("Enter your choice here : ");
  choice = int.parse(stdin.readLineSync()!);
  switch (choice) {
    case 1:
      ans = num1+num2;
      break;
    case 2:
      ans = num1-num2;
      break;
    case 3:
      ans = num1*num2;
      break;
    case 4:
      ans = num1/num2;
      break;
    default:
    print("Invalid Input");
    break;
  }
  return ans;
}

void main(){
  int ans = math();
  print("This is your answer  = $ans");
}