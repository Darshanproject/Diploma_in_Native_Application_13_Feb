import 'dart:io';

int name1(int num1,int num2){
  return num1+num2;
}

void main(){
  var a,b,name;
  print("Enter your name here : ");
  name = stdin.readLineSync()!;
  print("Enter your first number here : ");
  a = int.parse(stdin.readLineSync()!);
  print("Enter your Second number here : ");
  b = int.parse(stdin.readLineSync()!);
  print("Hello $name");
  int ans = name1(a, b);
  print("This is your addtion $ans");
}