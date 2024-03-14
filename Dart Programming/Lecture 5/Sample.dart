/*
class class_name{
  memeber function(){

  }
}
class class_name{

}

*/
class A{
  void display(){
    print("This is your parent class ");
  }
}
class B extends A{
  void display1(){
    print("This is your child class ");
  }
}

void main(){
  var obj = B();
  obj.display();
  obj.display1();
}
