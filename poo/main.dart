

import 'ex_01_class_object.dart';

void main()
{
  ClassPai obj1 = new ClassPai();   // OBS: "new" eh opcional
  print("atr1 = ${obj1.atr1}");
  //print("atr2 = ${obj1._atr2}"); // privado
  print("soma = ${obj1.soma()}");
  print("atrStatic = ${ClassPai.atrStatic}");
  print("obj1 = ${obj1.toString()} \n");
  ClassPai.atrStatic = ClassPai.atrStatic - 1;  // Decrementei atributo static

  ClassPai obj2 = ClassPai.c1(20, 200.5);
  print("atr1 = ${obj2.atr1}");
  //print("atr2 = ${obj2._atr2}"); //privado
  print("soma = ${obj2.soma()}");
  print("atrStatic = ${ClassPai.atrStatic}");
  print("obj2 = ${obj2.toString()} \n");

  ClassPai obj3 = ClassFilha();
  print("obj3.soma() = ${obj3.soma()}");
  //print("obj3.atrMixin = ${obj3.atrMixin} \n"); // ERRO: pois o mixin não faz parte da hierarquia
}