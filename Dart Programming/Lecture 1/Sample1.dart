import 'dart:io';

void main(){
  var name ,age;
  print("Enter your name here: ");
  name = stdin.readLineSync()!;
  print("Enter your age here : ");
  age = int.parse(stdin.readLineSync()!);
  print("Hello User $name");
  print("Is this your age $age");
}