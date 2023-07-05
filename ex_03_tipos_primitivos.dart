import 'dart:math';

// Exemplo:
//  num, int, double, bool, string
//  var x dynamic x late
//  const x final

main()
{
  //------------------------------------------------------
  // Tipos "primitivos"
  //------------------------------------------------------
  // OBS: perceba que essas variáveis são objetos.

  bool myBool = true;
  print("myBool: $myBool");

  int myInt = 50;         // 8 bytes
  print("myInt: $myInt");

  double myDouble = 7.5;  // 8 bytes
  print("myDouble: $myDouble");

  String myString = "Bruno Monteiro"; // UTF-16
  print("myString $myString");

  print("");

  // Numbers
  // num : classe pai de int e double
  num myNum = 10;
  print(myNum);
  print(myNum is int); //true
  print(myNum is double);

  int i = myNum as int; //converte myNum em int
  print(i);

  print("");

  myNum = 10.99;
  print(myNum);
  print(myNum is int);
  print(myNum is double); //true

  double d = myNum as double; //converte myNum em double
  print(d);

  print("");

  //-------------------------------------------------------
  // var x dynamic x late
  //-------------------------------------------------------
  // Variável cujo tipo é definido na primeira atribuição
  var myVar = 10;
  print( myVar is bool );
  print( myVar is int );      // true
  print( myVar is double );
  print( myVar is String );

  print("");

  // Variável cujo tipo pode ser alterado em cada atribuição
  // OBS: uma variável em Dart armazena a referência para o valor. 
  dynamic myDyn = 10;
  print("myDyn: $myDyn");
  myDyn = "dez";
  print("myDyn: $myDyn");

  print("");

  // Variável late (Dart 2.12)
  // Permite declarar uma variável sem precisar inicializar.
  late String myLate;
  myLate = "Só depois...";
  print(myLate);

  print("");

  //-------------------------------------------------------
  // Constante (const x final)
  //-------------------------------------------------------
  // const : se o valor é conhecido apenas em tempo de compilação.
  // final : se o valor é conhecido apenas em tempo de execução.

  const double PI = 3.1416;
  print("Constante PI: $PI");
  final int NUM = Random().nextInt(10); // valor >= 0 and < 10
  print("Constante STR: $NUM");
}