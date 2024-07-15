// Exemplo: classe-entidade

class ClassPai
{
  // ATRIBUTO DA CLASSE:
  static int atrStatic = 1000;

  // ATRIBUTOS DO OBJETO:
  late double _atr1 = 0; // privado, ou seja, visivel apenas dentro da lib, devido ao _ antes do nome
  late double _atr2 = 0; // privado, ou seja, visivel apenas dentro da lib, devido ao _ antes do nome

  // CONSTRUTORES:

  // Construtor default:
  ClassPai() {
  }

  // Construtor c1: quando há apenas atribuições, deve-se usar o formato de c2.
  ClassPai.c1(double atr1, double atr2) {
    this._atr1 = atr1;
    this._atr2 = atr2;
  }

  // Construtor c2: tem o mesmo efeito de c1.
  ClassPai.c2(this._atr1, this._atr2);

  // METODOS
  double soma() {
    return _atr1 + _atr2;
  }

  @override
  String toString() {
    return  " atr1 = $_atr1" +
            " atr2 = $_atr2";
  }

}

// classe filha de ClassPai, com mixin de ClassMixin
class ClassFilha extends ClassPai with ClassMixin
{
  @override
  double soma() {
    print("soma sobrescrita!");
    return super._atr1 + super._atr2 + _atrMixin;
  }
}

// classe Mixin: classe cujos atributos podem ser usados por outras classes, mas NÃO pertecem à hierarquia!!!
mixin ClassMixin
{
  double _atrMixin = 3.14;
}



void main()
{
  ClassPai obj1 = new ClassPai();   // OBS: "new" eh opcional
  print("atr1 = ${obj1._atr1}");
  print("atr2 = ${obj1._atr2}");
  print("soma = ${obj1.soma()}");
  print("atrStatic = ${ClassPai.atrStatic}");
  print("obj1 = ${obj1.toString()} \n");
  ClassPai.atrStatic = ClassPai.atrStatic - 1;  // Decrementei atributo static

  ClassPai obj2 = ClassPai.c1(20, 200.5);
  print("atr1 = ${obj2._atr1}");
  print("atr2 = ${obj2._atr2}");
  print("soma = ${obj2.soma()}");
  print("atrStatic = ${ClassPai.atrStatic}");
  print("obj2 = ${obj2.toString()} \n");

  ClassPai obj3 = ClassFilha();
  print("obj3.soma() = ${obj3.soma()}");
  //print("obj3.atrMixin = ${obj3.atrMixin} \n"); // ERRO: pois o mixin não faz parte da hierarquia
}