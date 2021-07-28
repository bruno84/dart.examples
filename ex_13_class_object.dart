void main() 
{
  MyClassPai obj1 = new MyClassPai();   // OBS: "new" eh opcional
  print("atr1 = ${obj1.atr1}");
  print("atr2 = ${obj1.atr2}");
  print("soma = ${obj1.soma()}");
  print("atrStatic = ${MyClassPai.atrStatic} \n");

  MyClassPai obj2 = MyClassPai.c1(20, 200.5);
  print("atr1 = ${obj2.atr1}");
  print("atr2 = ${obj2.atr2}");
  print("soma = ${obj2.soma()}");
  print("atrStatic = ${MyClassPai.atrStatic} \n");

  MyClassPai obj3 = MyClassPai.c2(30, 300.5);
  print("obj3 = ${obj3.toString()}");
  print("obj3.atrib3 = ${obj3._atr3} \n");

  MyClassPai obj4 = MyClassPaiFilha();
  print("obj4.soma() = ${obj4.soma()}");
  //print("obj4.atrMixin = ${obj4.atrMixin} \n"); // ERRO: pois o mixin não faz parte da hierarquia
}

class MyClassPai 
{
  // ATRIBUTOS
  static int atrStatic = 1000; 

  int atr1 = 1;
  double atr2 = 1.2;
  double _atr3 = 1.3; // privado, ou seja, visivel apenas dentro da lib, devido ao _ antes do nome
  
  // CONSTRUTORES
  MyClassPai() {
  }

  MyClassPai.c1(int atr1_, double atr2_) {
    this.atr1 = atr1_;
    this.atr2 = atr2_;
  }

  // OBS: Equivalente ao construtor c1
  MyClassPai.c2(this.atr1, this.atr2);

  // METODOS
  double soma() {
    return atr1 + atr2;
  }

  @override
  String toString() {
    return  " atr1 = $atr1" + 
            " atr2 = $atr2";
  }

}

// classe filha de MyClassPai, com mixin de MyClassMixin
class MyClassPaiFilha extends MyClassPai with MyClassMixin
{
  @override
  double soma() {
    print("soma sobrescrita!");
    return super.atr1 + super.atr2 + atrMixin;
  }
}


mixin MyClassMixin 
{
  double atrMixin = 3.14;
}