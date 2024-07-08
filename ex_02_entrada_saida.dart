import 'dart:io';
import 'dart:math';

// Exemplo:
//  Entrada e saída de dados
//  Null Safety

main() 
{
  print("Qual seu nome? ");
  String? nome = stdin.readLineSync(); //OBS: Null Safety com ?
  print("Olá $nome");

  print("Digite o raio para calcular a área da circunferência: ");
  double raio = double.parse( stdin.readLineSync()! ); //OBS: Null Safety com !
  double area = pi * pow(raio, 2);

  print("area: $area");
  print("area: " + area.toString());

  print("area: ${area.toStringAsFixed(2)}" );
  print("area: " + area.toStringAsFixed(2) );

  stdout.write("area: $area");         // escrever sem pular linha
  print("teste");

  /*
    Observação: Null Safety
    Marcar situações onde pode haver null:
    ? : quando há chance da variável ser null
    ! : quando há chance da expressão ser null
   */

  /*
    Observação: style - constants (polêmica)
    Usar lowerCamelCase, exceto se o código legado já usar SCREAMING_CAPS.
    Fonte: https://dart.dev/effective-dart/style
   */

  /*
    Observação: style - package
    Embora o padrão Dart permita my_package, isso não é aceito na Apple.
    Logo, melhor usar: mypackage
    Obviamente, não usar: MyPackage
   */

}