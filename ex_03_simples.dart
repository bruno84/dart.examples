import 'dart:io';
import 'dart:math';

// Referencia de libs:
// https://dart.dev/guides/libraries

// Tutorial:
// https://www.tutorialspoint.com/dart_programming/

main() 
{
  print("Digite o raio para calcular a área da circunferência: ");
  double raio = double.parse(stdin.readLineSync()!);

  double area = pi * pow(raio, 2);

  print("area: " + area.toStringAsFixed(2));
}
