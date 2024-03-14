
import 'dart:io';

void main()
{
  var num,m1=1,n1=-1;
  print("Enter the number : ");
  num=int.parse(stdin.readLineSync()!);

  if(num==0)
  {
    print("0");
  }
  else if(num > m1)
  {
    print("M1 = 1");
  }
  else if(num < n1)
  {
     print("N1 = -1");
  }
  else{
    print("This not valid");
  }
}