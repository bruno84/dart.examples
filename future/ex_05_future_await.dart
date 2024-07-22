
// EXEMPLO: evento assíncrono (Future) com await.

Future<int> divisao(int n1, int n2) async
{
  print("iniciou divisao: $n1 $n2");
  return Future.delayed( const Duration(seconds: 2), () {
    return n1 ~/ n2;
  });
}

// OBS: para usar await, o método também precisa ser async

// OBS: tanto faz:  Future<void> main() async  OU  main() async

Future<void> main() async
{
  print("Iniciou main()");

  // Perceba que com o await:
  // O fluxo aguarda a conclusão de divisao()
  // Não é necessário usar "then" para pegar o retorno.

  try {
    int valor = await divisao(10, 2);
    print("valor: $valor");
  }
  catch(e) {
    print("ERRO: divisao por zero!");
  }
  finally {
    print("Sempre será executado!");
  }

  print("Fluxo do main");

  /*
  // Funciona também usar o then com await, mas não é comum!

  await divisao(10, 2).then((int valor) {
    print("Future concluído. valor: $valor");
  }).catchError((Object erro, StackTrace stacktrace) {
    print("Future concluído, porém com erro: $erro");
    print(stacktrace);
  }).whenComplete(() {
    print("Future concluído: whenComplete()");
  });
*/

}