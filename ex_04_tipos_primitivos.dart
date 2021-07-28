main() 
{
  int myInt = 50;         // 8 bytes
  print("myInt: $myInt");

  double myDouble = 7.5;  // 8 bytes
  print("myDouble: $myDouble");

  String myString = "Bruno Monteiro"; // UTF-16
  print("myString $myString");

  bool myBool = true;
  print("myBool: $myBool");

  // Variável cujo tipo é definido na primeira atribuição
  var myVar = 10;
  print(myVar is int);      // true
  print(myVar is double);
  print(myVar is String);
  print(myVar is bool);

  // Variável cujo tipo pode ser alterado em cada atribuição
  // OBS: uma variável em Dart armazena a referência para o valor. 
  dynamic myDyn = 10;
  print("myDyn: $myDyn");
  myDyn = "dez";
  print("myDyn: $myDyn");

  // Variável late (Dart 2.12)
  // Permite declarar uma variável sem precisar inicializar.
  late String myLate;
  myLate = "Só depois...";
  print(myLate);


  // Constante
  /* ATENÇÃO (const x final): 
  const : se o valor é conhecido apenas em tempo de compilação.
  final : se o valor é conhecido apenas em tempo de execução. */
  const double PI = 3.1416;
  print("Constante PI: $PI \n");

}
