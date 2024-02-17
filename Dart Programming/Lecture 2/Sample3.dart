/*
  Elseif:
  Syntax:
  if(condtion){
    sts
  }else if(condtion){
    sts
  }else{
    sts
  }
*/

import 'dart:io';

void main(){
  var marks;
  print("Enter your marks here : ");
  marks = int.parse(stdin.readLineSync()!);
  if (marks > 90 && marks < 100) {
    print("A grade !!!");
  }
  else if(marks > 70 && marks <= 90){
    print("B garde !!");
  }
  else if(marks > 60 && marks <= 70){
    print("C garde!");
  }
  else if(marks > 40 && marks <= 60){
    print("Pass ");
  }
  else if(marks > 35 && marks <= 40){
    print("Just pass ");
  }
  else if(marks > 100 && marks < 0){
    print("Invalid input");
  }
  else{
    print("Fail");
  }
}