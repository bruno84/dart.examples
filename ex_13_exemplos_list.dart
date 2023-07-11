
main()
{
  List<int> lista1 = List<int>.empty(); // growable: true
  print("lista1: $lista1"); // []

  List<int> lista2 = List<int>.empty(growable: false);
  print("lista2: $lista2"); // []
  //lista2.add(99); // ERRO!

  List<int> lista3 = [];
  print("lista3: $lista3"); // []

  List<int> lista4 = List<int>.filled(5, -1);
  print("lista4: $lista4"); // [-1, -1, -1, -1, -1]
  // lista4.add(99); ERRO!

  List<int> lista5 = List<int>.generate(5, (index) => -1);
  print("lista5: $lista5");
  lista5.add(0);
  lista5.add(9);
  print("lista5: $lista5"); // [-1, -1, -1, -1, -1, 0, 9]
  lista5.shuffle();
  print("lista5: $lista5");

  List<int> lista6 = List<int>.generate(5, (index) => index++);
  print("lista6: $lista6"); // [0, 1, 2, 3, 4]

  List<int> lista7 = lista6.reversed.toList();
  print("lista7: $lista7"); // [4, 3, 2, 1, 0]
  lista7.fillRange(2, 4, -2); // OBS: end = index-1
  print("lista7: $lista7"); // [4, 3, -2, -2, 0]

}