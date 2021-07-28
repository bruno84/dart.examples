main() 
{
  //---------------------------------------------
  // LIST
  //---------------------------------------------

  // Declaração de uma lista vazia
  //List<int> myListDec = new List<int>();  // Atencao! deprecated
  List<int> myListDec = [];
  print("myListDec: $myListDec");
  print("size: ${myListDec.length} \n");

  // Lista de apenas um tipo
  List<int> myListTyped = [10, 20, 30, 40];
  myListTyped.add(50);
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


  //---------------------------------------------
  // SET
  //---------------------------------------------

  // Declaração de um set vazio
  Set<int> mySetDec = new Set<int>();  
  print("mySetDec: $mySetDec");
  print("size: ${mySetDec.length} \n");

  // Set de apenas um tipo 
  // Atencao: não pode haver elementos repetidos
  Set<int> mySetTyped = {10, 20, 30, 40, 20};
  print("mySetTyped: $mySetTyped \n");

  // Set genérica (não pode haver elementos repetidos)
  Set mySetGeneric = {20, 16.5, "trinta", true, 16.5};
  print("mySetGeneric: $mySetGeneric \n");

  //---------------------------------------------
  // MAP
  //---------------------------------------------

  // Declaração de um map vazio
  Map<int, String> myMapDec = new Map<int, String>();  
  print("myMapDec: $myMapDec");
  print("size: ${myMapDec.length} \n");

  // Mapa <chave, valor>
  Map<int, String> myMap = {1: "Valor1", 2: "Valor2", 3: "Valor3"};
  myMap[4] = "Valor4";    // adiciona
  myMap[4] = "Valor44";   // adiciona  OBS: se houver chave repetida, o valor eh sobrescrito.
  myMap.remove(2);        // remove
  print("size: ${myMap.length}");
  print("myMap: $myMap");
  int chave = 1;
  var strValor = myMap[chave];
  print("para a chave $chave o valor eh $strValor \n");

  // OBS: para mais coleções usar a lib 'dart:collection'


}
