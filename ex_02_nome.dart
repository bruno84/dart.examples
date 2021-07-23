import 'dart:io';

// Referencia de libs:
// https://dart.dev/guides/libraries

main() 
{
  print("Digite seu nome: ");
  String nome = stdin.readLineSync()!;

  print("Olá $nome");
}
