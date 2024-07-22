import 'dart:io';

main()
{
  // OBS: growable = capacidade de crescer
  // OBS: diferentemente de Java, em Dart não á como controlar a capacidade.

  print("\n empty");

  List<int> lista1 = List<int>.empty(); // growable: false (default)
  print("lista1: $lista1"); // []
  // lista1.add(99); // ERRO

  List<int> lista2 = List<int>.empty(growable: true);
  print("lista2: $lista2"); // []
  lista2.add(99);

  List<int> lista3 = [];
  print("lista3: $lista3"); // []
  lista3.add(99);

  print("\n filled");

  List<int> lista4 = List<int>.filled(5, -1); // growable: false (default)
  print("lista4: $lista4"); // [-1, -1, -1, -1, -1]
  // lista4.add(99); // ERRO!

  List<int> lista5 = List<int>.filled(5, -1, growable: true);
  print("lista5: $lista5"); // [-1, -1, -1, -1, -1]
  lista5.add(99);
  print("lista5: $lista5"); // [-1, -1, -1, -1, -1, 99]


  print("\n generate");

  List<int> lista6 = List<int>.generate(5, (indice) => -1);
  print("lista6: $lista6");
  lista6.add(0);
  lista6.add(9);
  print("lista6: $lista6"); // [-1, -1, -1, -1, -1, 0, 9]
  lista6.shuffle();
  print("lista6: $lista6");

  List<int> lista7 = List<int>.generate(5, (index) => index*2);
  print("lista7: $lista7"); // [0, 2, 4, 6, 8]


  print("\n reversed");

  List<int> lista8 = lista7.reversed.toList();
  print("lista8: $lista8"); // [4, 3, 2, 1, 0]
  lista8.fillRange(2, 4, -2); // OBS: end = index-1
  print("lista8: $lista8"); // [4, 3, -2, -2, 0]

  print("\n sort");
  lista8.sort();
  print("lista8: $lista8");

  print("\n MATRIZ");

  print("\n matriz: empty");

  // OBS: matriz = lista aninhada (ou nested List)
  List<List<int>> matriz1 = List<List<int>>.empty();
  print("matriz1: $matriz1");
  print("matriz1.length: ${matriz1.length}");
  imprimirMatriz(matriz1);

  print("\n matriz: inicializada");

  // OBS: como são listas dentro de uma lista,
  // cada linha da matriz pode ter tamanhos diferentes
  List<List<int>> matriz2 = [ [1,2,3,4], [5], [6,7] ];
  print("matriz2: $matriz2");
  print("matriz2.length:    ${matriz2.length}");
  print("matriz2[0].length: ${matriz2[0].length}");
  print("matriz2[1].length: ${matriz2[1].length}");
  print("matriz2[2].length: ${matriz2[2].length}");
  imprimirMatriz(matriz2);

  print("\n matriz: filled");

  List<List<int>> matriz3 = List<List<int>>.filled(3, List<int>.filled(4, -1));
  print("matriz3: $matriz3");
  print("matriz3.length:    ${matriz3.length}");
  print("matriz3[0].length: ${matriz3[0].length}");
  print("matriz3[1].length: ${matriz3[1].length}");
  print("matriz3[2].length: ${matriz3[2].length}");
  imprimirMatriz(matriz3);

  print("\n matriz: generate");

  List<List<int>> matriz4 = List<List<int>>.generate(3, (index1) => List<int>.generate(4, (index2) => index1*4 + index2) );
  print("matriz4: $matriz4");
  print("matriz4.length:    ${matriz4.length}");
  print("matriz4[0].length: ${matriz4[0].length}");
  print("matriz4[1].length: ${matriz4[1].length}");
  print("matriz4[2].length: ${matriz4[2].length}");
  imprimirMatriz(matriz4);

}

// Método para facilitar impressão amigável de uma matriz
imprimirMatriz(List<List<int>> m)
{
  for( int l = 0; l < m.length; l++ )
  {
    for( int c = 0; c < m[l].length; c++ )
    {
        stdout.write("${m[l][c]} ");
    }
    print("");
  }
  print("");
}