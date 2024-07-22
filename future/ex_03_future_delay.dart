
// EXEMPLO: Fluxo assíncrono (Future) com delay

void main()
{
  print("Buscando..");

  Future<int> buscarIdFunc = buscarId();

  // OBS: lembre-se que id é o retorno do método Future
  buscarIdFunc.then( (int id) {
    print("ID encontrado: $id");
  });

  print("Fim!");
}

Future<int> buscarId() {
  return Future.delayed( const Duration(seconds: 3), () => 77 );
}

