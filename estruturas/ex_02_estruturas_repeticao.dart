import "dart:io";

// Exemplo: estruturas de repetição

void main()
{ 
  int vi = 1;
  int vf = 5;

  //-------------------------------------------------------
  // FOR
  //-------------------------------------------------------
  print("FOR");

  for(int i = vi; i < vf; i++) {
    stdout.write("$i ");              // escrever sem pular linha
  }

  //-------------------------------------------------------
  // CONTINUE e BREAK
  //-------------------------------------------------------
  print("\nCONTINUE e BREAK");

  for (int i=0; i <= 20; i++)
  {
    if (i % 2 == 0) continue; // volta para a condição do loop

    if (i >= 10) break;       // sai do loop

    stdout.write("$i ");      // 1 3 5 7 9
  }

  //-------------------------------------------------------
  // WHILE
  //-------------------------------------------------------
  print("\nWHILE");

  int i = vi;      
  while(i < vf) {   
    stdout.write("$i ");
    i++;
  }

  //-------------------------------------------------------
  // DO-WHILE
  //-------------------------------------------------------
  print("\nDO-WHILE");

  i = vi;
  do {   
    stdout.write("$i ");
    i++;          
  } while(i < vf);

  //-------------------------------------------------------
  // ITERABLE
  //-------------------------------------------------------
  print("\nITERABLE");

  List myList = ["zero", "um", "dois", "três", "quatro"];
  print(myList);
  stdout.writeAll(myList, ";");
  print("");

  Iterable subList1 = myList.where( (element) => element.length == 4 );
  // OBS: retorna Iterable com os objetos conforme regra(s)
  print(subList1);          //Iterable
  print(subList1.toList()); //List

  //-------------------------------------------------------
  // FOR-IN (para objetos iterable)
  //-------------------------------------------------------
  print("\nFOR-IN (iterable)");

  for (String str in myList) {
    stdout.write("$str ");
  }
  print("");
  for (String str in subList1) {
    stdout.write("$str ");
  }

  //-------------------------------------------------------
  // FOR-IN (para objetos not-iterable)
  //-------------------------------------------------------
  print("\nFOR-IN (not-iterable)");

  Map<int, String> myMap = {1:"Valor1", 3:"Valor3", 2:"Valor2"};
  print("myMap.keys");
  for (int key in myMap.keys) {
    stdout.write("$key:${myMap[key]}  ");
  }
  print("\nmyMap.entries");
  for (MapEntry entry in myMap.entries) {
    stdout.write("${entry.key}:${entry.value}  ");
  }

}