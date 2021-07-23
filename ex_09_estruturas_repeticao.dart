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
  
  print("");

  List myList = ["zero", "um", "dois", "três", "quatro"];
  stdout.writeAll(myList, ";");
  
  print("");

  // FOREACH
  for (String str in myList) {
    stdout.write("$str ");
  }
}