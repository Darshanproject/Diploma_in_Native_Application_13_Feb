import 'dart:io';

void fun(String name ,int age){
  print("Hello $name Welcome to my app");
  if (age > 18) {
      print("You can use this app ");
  }else{
    print("You can't use this app");
  }
}

void main(){
  var name,age;
  print("Enter your name here : ");
  name = stdin.readLineSync()!;
  print("Enter your age here : ");
  age = int.parse(stdin.readLineSync()!);
  fun(name, age);
}