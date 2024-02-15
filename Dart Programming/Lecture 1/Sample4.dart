/*&& || != */

import 'dart:io';

void main(){
  var num1;
  print("Enter your age here : ");
  num1 = int.parse(stdin.readLineSync()!);
  (num1 > 18 || num1 < 100)?print("You are a human"):print("You are an gosht");
}