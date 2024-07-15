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
  print("TIPOS \"PRIMITIVOS\"");
  // OBS: perceba que essas variáveis são objetos.

  bool myBool = true;
  print("myBool: $myBool");

  int myInt = 50;         // 8 bytes
  print("myInt: $myInt");

  double myDouble = 7.5;  // 8 bytes
  print("myDouble: $myDouble");

  String myString = "Bruno Monteiro"; // UTF-16
  print("myString $myString");

  //------------------------------------------------------
  // Numbers
  //------------------------------------------------------
  print("\nNUMBERS");
  // num : classe pai de int e double

  print("\nIdentificação:");
  num myNum = 10;
  print(myNum);             // 10
  print(myNum is int);      // true
  print(myNum is double);   // false
  print(myNum.runtimeType); // int

  print("\nConversão:");

  int i = myNum as int; //converte myNum em int
  print(i);   // 10

  myNum = 10.99;
  print(myNum);             // 10.99
  print(myNum is int);      // false
  print(myNum is double);   // true
  print(myNum.runtimeType); // double

  double d = myNum as double; //converte myNum em double
  print(d); // 10.99

  //-------------------------------------------------------
  // var x dynamic x late
  //-------------------------------------------------------
  print("var x dynamic x late");

  print("\nvar");
  // Variável cujo tipo é definido na inicialização
  var myVar1 = 10;
  print(myVar1.runtimeType);  // int
  // myVar1 = "Bruno";        // erro: pois já foi definido como int

  var myVar2;
  myVar2 = 10;
  print(myVar2.runtimeType);  // int
  myVar2 = "Bruno";           // É tratada como dynamic se não for inicializada
  print(myVar2.runtimeType);  // string

  print("\n dynamic");
  // Variável cujo tipo pode ser alterado em cada atribuição
  // OBS: uma variável em Dart armazena a referência para o valor. 
  dynamic myDyn = 10;
  print("myDyn: $myDyn");
  myDyn = "dez";
  print("myDyn: $myDyn");

  print("\nlate");
  // Variável late (Dart 2.12)
  // Permite declarar uma variável sem precisar inicializar.
  // OBS: importante na declaração de atributos de uma classe.
  late String myLate;
  myLate = "Só depois...";
  print("myLate: $myLate");

  //-------------------------------------------------------
  // Constante (const x final)
  //-------------------------------------------------------
  print("\nConstante (const x final)");

  // const : se o valor é conhecido apenas em tempo de compilação.
  // final : se o valor é conhecido apenas em tempo de execução.

  const double constPi  = 3.1416;
  print("Constante constPi: $constPi");

  final int constRand;
  constRand = Random().nextInt(10); // valor >= 0 and < 10
  print("Constante constRand: $constRand");
}