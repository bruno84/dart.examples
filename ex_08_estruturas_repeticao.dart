import "dart:io";

// Exemplo: estruturas de repetição

void main()
{ 
  int vi = 1;
  int vf = 5;

  //-------------------------------------------------------
  // for
  //-------------------------------------------------------
  print("for");

  for(int i = vi; i < vf; i++) {
    stdout.write("$i ");              // escrever sem pular linha
  }
  
  print("");

  //-------------------------------------------------------
  // while
  //-------------------------------------------------------
  print("while");

  int i = vi;      
  while(i < vf) {   
    stdout.write("$i ");
    i++;
  }
  
  print("");

  //-------------------------------------------------------
  // do-while
  //-------------------------------------------------------
  print("do-while");

  i = vi;
  do {   
    stdout.write("$i ");
    i++;          
  } while(i < vf);
  
  print("");

  //-------------------------------------------------------
  // Iterable
  //-------------------------------------------------------
  print("Iterable");

  List myList = ["zero", "um", "dois", "três", "quatro"];
  print(myList);
  stdout.writeAll(myList, ";");
  print("");

  Iterable subList1 = myList.where( (element) => element.length == 4 );
  // OBS: retorna Iterable com os objetos conforme regra(s)
  print(subList1);          //Iterable
  print(subList1.toList()); //List

  print("");

  //-------------------------------------------------------
  // FOREACH (para objetos iterable)
  //-------------------------------------------------------
  print("foreach (iterable)");

  for (String str in myList) {
    stdout.write("$str ");
  }

  print("");

  //-------------------------------------------------------
  // FOREACH (para objetos not-iterable)
  //-------------------------------------------------------
  print("foreach (not-iterable)");

  Map<int, String> myMap = {1: "Valor1", 2: "Valor2", 3: "Valor3"};

  for (int key in myMap.keys) {
    stdout.write("$key:${myMap[key]}  ");
  }

}