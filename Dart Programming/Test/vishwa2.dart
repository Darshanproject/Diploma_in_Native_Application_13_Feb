class A{
  void display(){
    print("This is Vishwa");
  }
}
class B extends A{
  void display1(){
    super.display();
    print("This is Vishwa Bhimani");
  }
}
void main(){
  var obj = B();
  obj.display1();

}