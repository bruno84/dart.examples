import 'dart:io';
import 'dart:math';

main() 
{
  print("Digite o raio para calcular a área da circunferência: ");
  double raio = double.parse(stdin.readLineSync()!);

  double area = pi * pow(raio, 2);

  print("area: $area");
  print("area: ${area.toStringAsFixed(2)}");
  print("area: " + area.toStringAsFixed(2));
}
