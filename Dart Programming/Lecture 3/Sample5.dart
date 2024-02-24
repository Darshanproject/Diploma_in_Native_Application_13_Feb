import 'dart:io';

void fun(){
  var num1,num2;
  print("Enter your numbers here : ");
  num1 = int.parse(stdin.readLineSync()!);
  print("Enter your numbers here : ");
  num2 = int.parse(stdin.readLineSync()!);
  var ans = num1+num2;
  print("This is your addtion $ans");
}

void main(){
  fun();
}