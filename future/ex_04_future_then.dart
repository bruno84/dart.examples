
// EXEMPLO: evento assíncrono (Future) com tratamento do retorno usando then.

Future<int> divisao(int n1, int n2) async
{
  print("iniciou divisao: $n1 $n2");
  return Future.delayed( const Duration(seconds: 2), () {
    return n1 ~/ n2;
  });
}

void main()
{
  print("Inicio main()");

  divisao(10, 2).then((int valor) {
    print("Future concluído. valor: $valor");
  }).catchError((Object erro, StackTrace stacktrace) {
    print("Future concluído, porém com erro: $erro");
    print(stacktrace);
  }).whenComplete(() {
    print("Future concluído: whenComplete()");
  });

  print("Fim main()");
  // OBS: perceba que o fluxo principal não espera pelo fim de divisao()
}