///parametrized cons

import 'dart:io';

class A{
  A(int age ,String name){
    print("Hello user $name");
    if(age > 18){
      print("You can use this app");
    }else{
      print("You can't use this app ");
    }
  }
}

void main(){
  var name,age;
  print("Enter your name here : ");
  name = stdin.readLineSync()!;
  print("Enter your age here : ");
  age = int.parse(stdin.readLineSync()!);
  var obj = A(age, name);
}