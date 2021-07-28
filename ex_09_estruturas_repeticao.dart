import "dart:io";

void main()
{ 
  int vi = 1;
  int vf = 5;

  for(int i = vi; i < vf; i++) {
    stdout.write("$i ");              // escrever sem pular linha
  }
  
  print("");

  int i = vi;      
  while(i < vf) {   
    stdout.write("$i ");
    i++;
  }
  
  print("");

  i = vi;      
  do {   
    stdout.write("$i ");
    i++;          
  } while(i < vf);
  
  print("\n");

  // FOREACH (para objetos iterable)
  List myList = ["zero", "um", "dois", "três", "quatro"];
  stdout.writeAll(myList, ";");
  print("");

  for (String str in myList) {
    stdout.write("$str ");
  }

  print("\n");

  Iterable subList1 = myList.where((element) => element.length == 4);
  print(subList1);
  print(subList1.toList());

  print("");

  // FOREACH (para objetos not-iterable)
  Map<int, String> myMap = {1: "Valor1", 2: "Valor2"};

  for (int key in myMap.keys) {
    stdout.write("$key:${myMap[key]}  ");
  }

  print("\n\n");
}