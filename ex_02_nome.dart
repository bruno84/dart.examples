import 'dart:io';

main() 
{
  print("Digite seu nome: ");
  String? nome = stdin.readLineSync(); // null safety

  print("Olá $nome");
}
