import 'dart:io';

void main(){
  var num,i=0;
  print("enter value");
  num=int.parse(stdin.readLineSync()!);
  for(i=0;i<=num;i++)
  {
   if(i%2!=0)
   {
    print(i);
   }
   
  }

}