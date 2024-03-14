class A{
  void dis(){
    print("This is your first class ");
  }

}


class B extends A{
  void dis(){
    super.dis();
    print("This is your second class ");
  }
}

void main(){
  var obj = B();
  obj.dis();
}