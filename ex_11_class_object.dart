void main() 
{
  MyClass c = new MyClass();
  c.show("Bruno");
  c.show(10);
  c.show(true);
  c.show(80.77);
}

class MyClass 
{
  void show(var param) {
    print("Exibindo: $param");
  }
}
