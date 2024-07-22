// Objetivo: List, Set, Map

main()
{
  //-------------------------------------------------------
  // LIST: lista
  //-------------------------------------------------------
  // OBS: perceba que o conjunto é definido por [...]

  print("\n list: empty");
  // Declaração de uma lista vazia
  //List<int> myListDec = new List<int>();  // Atencao! deprecated
  List<int> myListDec = [];
  print("myListDec: $myListDec");
  print("size: ${myListDec.length}");

  print("\n list: homogenea");
  // Lista de apenas um tipo
  List<int> myListTyped = [10, 20, 30, 40];
  myListTyped.add(25);
  print("myListTyped: $myListTyped");
  int index = 1;
  int elemento = myListTyped[index];
  print("indice: $index elemento: $elemento");

  print("\n list: heterogenea");
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

  print("\n set: vazio");

  // Declaração de um set vazio
  Set<int> mySetDec1 = new Set<int>();
  print("mySetDec1: $mySetDec1");
  print("size: ${mySetDec1.length} \n");

  Set<int> mySetDec2 = {};
  print("mySetDec2: $mySetDec2");
  print("size: ${mySetDec2.length} \n");

  print("\n set: homogenea");

  // Set de apenas um tipo
  Set<int> mySetTyped = {10, 20, 30, 40, 20};
  mySetTyped.add(25);
  print("mySetTyped: $mySetTyped \n");

  print("\n set: heterogenea");

  // Set genérica
  Set mySetGeneric = {20, 16.5, "trinta", true, 16.5};
  print("mySetGeneric: $mySetGeneric \n");

  //-------------------------------------------------------
  // MAP: cada elemento é composto por <chave, valor>
  //-------------------------------------------------------
  // ATENÇÃO: em caso de repetição da chave, o valor eh sobrescrito.

  print("\n map: vazio");

  // Declaração de um map vazio
  Map myMapDec = new Map<int, String>();
  print("myMapDec: $myMapDec");
  print("size: ${myMapDec.length}");

  print("\n map: inicialização e alterações");

  // Mapa <chave, valor>
  Map<int, String> myMap = {1: "Valor1", 2: "Valor2", 3: "Valor3"};
  print("myMap: $myMap");
  myMap[5] = "Valor5";    // chave nova: valor adicionado
  print("myMap: $myMap");
  myMap[5] = "Valor55";   // chave já existe: valor é sobrescrito
  print("myMap: $myMap");
  myMap.remove(2);        // remove
  print("myMap: $myMap");
  int chave = 1;
  var strValor = myMap[chave];
  print("chave: $chave valor: $strValor");

  // OBS: para mais coleções usar a lib 'dart:collection'

}
