main() 
{
  // Lista de apenas um tipo
  List<int> myListTyped = [10, 20, 30, 40];
  print("myListTyped: $myListTyped");
  int index = 1;
  int elemento = myListTyped[index];
  print("para o indice $index o elemento $elemento \n");

  // Lista genérica
  List myListGeneric = [10, 8.5, "vinte", false];
  print("myListGeneric: $myListGeneric");
  index = 1;
  dynamic dynValor = myListGeneric[index];
  print("para o indice $index o elemento $dynValor \n");

  // Set de apenas um tipo (não pode haver elementos repetidos)
  Set<int> mySetTyped = {10, 20, 30, 40, 20};
  print("mySetTyped: $mySetTyped \n");

  // Set genérica (não pode haver elementos repetidos)
  Set mySetGeneric = {20, 16.5, "trinta", true, 16.5};
  print("mySetGeneric: $mySetGeneric \n");

  // Mapa <chave, valor>
  Map<int, String> myMap = {1: "Valor1", 2: "Valor2"};
  print("myMap: $myMap");
  int chave = 1;
  var strValor = myMap[chave];
  print("para a chave $chave o valor $strValor \n");
}
