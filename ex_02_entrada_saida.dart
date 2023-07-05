import 'dart:io';
import 'dart:math';

// Exemplo:
//  Entrada e saída de dados
//  Null Safety

main() 
{
  print("Qual seu nome? ");
  String? nome = stdin.readLineSync();
  print("Olá $nome");

  print("Digite o raio para calcular a área da circunferência: ");
  double raio = double.parse( stdin.readLineSync()! );
  double area = pi * pow(raio, 2);

  print("area: $area");
  print("area: " + area.toString());

  print("area: ${area.toStringAsFixed(2)}" );
  print("area: " + area.toStringAsFixed(2) );

  stdout.write("area: $area");         // escrever sem pular linha
  print("teste");

  /*
    Observações: Null Safety
    Marcar situações onde pode haver null:
    ? : quando há chance da variável ser null
    ! : quando há chance da expressão ser null
   */
}