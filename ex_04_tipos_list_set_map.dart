// Objetivo: List, Set, Map

main()
{
  //-------------------------------------------------------
  // LIST: lista
  //-------------------------------------------------------
  // OBS: perceba que o conjunto é definido por [...]

  // Declaração de uma lista vazia
  //List<int> myListDec = new List<int>();  // Atencao! deprecated
  List<int> myListDec = [];
  print("myListDec: $myListDec");
  print("size: ${myListDec.length} \n");

  // Lista de apenas um tipo
  List<int> myListTyped = [10, 20, 30, 40];
  myListTyped.add(25);
  print("myListTyped: $myListTyped");
  int index = 1;
  int elemento = myListTyped[index];
  print("indice: $index elemento: $elemento \n");

  // Lista genérica
  List myListGeneric = [10, 8.5, "vinte", false];
  print("myListGeneric: $myListGeneric");
  index = 1;
  dynamic dynValor = myListGeneric[index];
  print("indice: $index elemento: $dynValor \n");


  //-------------------------------------------------------
  // SET: cada elemento é uma chave
  //-------------------------------------------------------
  // ATENÇÃO: não permite repetição
  // OBS: perceba que o conjunto é definido por {...}

  // Declaração de um set vazio
  Set<int> mySetDec = new Set<int>();  
  print("mySetDec: $mySetDec");
  print("size: ${mySetDec.length} \n");

  // Set de apenas um tipo
  Set<int> mySetTyped = {10, 20, 30, 40, 20};
  mySetTyped.add(25);
  print("mySetTyped: $mySetTyped \n");

  // Set genérica
  Set mySetGeneric = {20, 16.5, "trinta", true, 16.5};
  print("mySetGeneric: $mySetGeneric \n");

  //-------------------------------------------------------
  // MAP: cada elemento é composto por <chave, valor>
  //-------------------------------------------------------
  // ATENÇÃO: em caso de repetição da chave, o valor eh sobrescrito.

  // Declaração de um map vazio
  Map<int, String> myMapDec = new Map<int, String>();  
  print("myMapDec: $myMapDec");
  print("size: ${myMapDec.length} \n");

  // Mapa <chave, valor>
  Map<int, String> myMap = {1: "Valor1", 2: "Valor2", 3: "Valor3"};
  print("myMap: $myMap");
  myMap[4] = "Valor4";    // chave nova: valor adicionado
  print("myMap: $myMap");
  myMap[4] = "Valor44";   // chave já existe: valor é sobrescrito
  print("myMap: $myMap");
  myMap.remove(2);        // remove
  print("myMap: $myMap");
  int chave = 1;
  var strValor = myMap[chave];
  print("chave: $chave valor: $strValor \n");

  // OBS: para mais coleções usar a lib 'dart:collection'

}
