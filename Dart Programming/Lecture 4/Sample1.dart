/*
  class calss_name{   cretaing a class
    memeber function(){  creating method 
      body of function
    }
  }

  void main(){
    obj creating object
    calling method
  }
*/

import 'dart:io';
 
class A{    ///creating class 
  void display(){     ///creating method
    print("This is your a class ");     ///body of method
  }
  void display1(int num1,int num2){    ///passed arguments in methods
    var sum = num1+num2;
    print("This is your class second methode");  ///body of method
    print("This is your total of two variables : $sum");
  }
}

void main(){
  var num1,num2;
  print("Enter your first number here : ");
  num1 = int.parse(stdin.readLineSync()!);
  print("Enter your second number here : ");
  num2 = int.parse(stdin.readLineSync()!);
  var obj = A();    ///creating object
  obj.display();    ///calling method using of objects
  obj.display1(num1,num2);
}