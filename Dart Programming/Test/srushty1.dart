import 'dart:io';

void main()
{
  var num=5;
  for (var i = 0; i < 5; i++) {
    for (var j = 0; j < i; j++) {
       stdout.write("*");
    }
    stdout.write("\n");
  }
}
