class A{
  void display()
  {
    print("This is parent class...");
  }
}

class B extends A{
  void display1()
  {
    print("This is child first class");
  }
}

class C extends A{
  void display2()
  {
    print("Thgis is secound child class.,..");
  }
}

void main(){
  var obj=B();
  obj.display();
  obj.display1();
}