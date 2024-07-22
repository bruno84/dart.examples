// Exemplo: classe-entidade

class ClassPai
{
  // ATRIBUTO DA CLASSE:
  static int atrStatic = 1000;

  // ATRIBUTOS DO OBJETO:
  late double  atr1;  // público
  late double _atr2;  // privado

  // OBS: não há modificador "protected"

  // CONSTRUTORES:

  // Construtor default:
  ClassPai() {
    atr1 = 10;
    _atr2 = 10;
  }

  // Construtor c1: quando há apenas atribuições, deve-se usar o formato de c2.
  ClassPai.c1(double atr1, double atr2) {
    this.atr1  = atr1;
    this._atr2 = atr2;
  }

  // Construtor c2: tem o mesmo efeito de c1.
  ClassPai.c2(this.atr1, this._atr2);

  // METODOS
  double soma() {
    return atr1 + _atr2;
  }


  @override
  String toString() {
    return  " atr1 = $atr1" +
            " atr2 = $_atr2";
  }

}

// classe filha de ClassPai, com mixin de ClassMixin
class ClassFilha extends ClassPai with ClassMixin
{
  @override
  double soma() {
    print("soma sobrescrita!");
    return super.atr1 + super._atr2 + _atrMixin;
  }
}

// classe Mixin: classe cujos atributos podem ser usados por outras classes, mas NÃO pertecem à hierarquia!!!
mixin ClassMixin
{
  double _atrMixin = 3.14;
}
