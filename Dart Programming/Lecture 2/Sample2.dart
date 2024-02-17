/*
  If Else:
  Syntax:
  if(Condtion){
    sts
  }else{
    fsts
  }
  
*/

import 'dart:io';

void main(){
  var age;
  print("Enter your age here : ");
  age = int.parse(stdin.readLineSync()!);
  if (age > 22) {
      print("You can buy your own house");
  }else{
    print("You are still a kid you can't buy a house ");
  }
}