/*
 (condtion)?exp1:exp2;
 > < >= <= == 
*/

import 'dart:io';

void main(){
  var num1;
  print("enter you value : ");
  num1 = int.parse(stdin.readLineSync()!);
  (num1 > 18)?print("True"):print("False");
  
}