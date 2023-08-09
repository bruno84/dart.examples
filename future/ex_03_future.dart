import 'dart:io';

Future<int> divisao(int n1, int n2) async
{
  print("Calculando...");
  sleep(const Duration(seconds: 1));
  return n1 ~/ n2;
}

void main()
{
  final future = divisao(10, 2).then((int valor) {
    print("Future em estado Completo, valor: $valor");
  }).catchError((Object erro, StackTrace stacktrace) {
    print("Future em estado Completo, erro: $erro");
    print(stacktrace);
  }).whenComplete(() {
    print("Future finalizado");
  });

  print("Future $future em estado Incompleto");
}