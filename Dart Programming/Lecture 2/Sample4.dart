 /*
  if(condtion){

    if(condtion){
        st
    }else if(){
        st
    }else{
        sts
    }
  }else{
      sts
  }
*/
import 'dart:io';

void main(){
  var age;
  print("Enter your age here : ");
  age = int.parse(stdin.readLineSync()!);
  if (age > 0 && age <= 80) { 
      if (age > 3 && age < 5) {
          print("You have to take full Ticket");
      }else if(age > 18 && age < 35){
        print("You have to take Full ticket");
      }else if(age >= 55 && age <= 80){
        print("You are a sineor cit you get dis of 80%");
      }else{
        print("You dont need to buy a ticket");
      }
  }else{
    print("This is not your real age !!");
  }
}