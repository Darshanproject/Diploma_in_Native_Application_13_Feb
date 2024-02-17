/*
if 
syntax:
if(condtion){
  true statement;
}
 */

import 'dart:io';

void main(){
  var Age;
  print("Enter your age here : ");
  Age = int.parse(stdin.readLineSync()!);
  if (Age > 18) {
      print("You can go inside");
  }  
}