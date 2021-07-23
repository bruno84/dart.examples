main() 
{
  int myInt = 50;
  print("myInt: $myInt");

  double myDouble = 7.5;
  print("myDouble: $myDouble");

  String myString = "Bruno Monteiro";
  print("myString $myString");

  bool myBool = true;
  print("myBool: $myBool");

  // Variável cujo tipo é definido na primeira atribuição
  var myVar = 10;
  print(myVar is int);    // true
  print(myVar is double);
  print(myVar is String);
  print(myVar is bool);

  // Variável cujo tipo pode ser alterado em cada atribuição
  dynamic myDyn = 10;
  print("myDyn: $myDyn");
  myDyn = "dez";
  print("myDyn: $myDyn");


  // Constante
  /* ATENÇÃO (const x final): 
  const : se o valor é conhecido apenas em tempo de compilação.
  final : se o valor é conhecido apenas em tempo de execução. */
  const double PI = 3.1416;
  print("Constante PI: $PI \n");

}
