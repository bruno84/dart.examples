import 'dart:io';

// Exemplo:
// "Alo mundo"
// Execução e Compilação

// Para executar o script, apenas clique em Run
// Para compilar o código, digite: dart compile exe ex_01_alomundo.dart

// OBS: É obrigatório haver uma função main
main()
{
  print("Alo mundo!\nDeu certo!"); // tanto faz: aspas simples ou dupla

  print('Press any key to exit!');
  stdin.readLineSync(); // trava a tela pra ler do teclado
}
