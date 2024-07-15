import 'dart:io';

// Exemplo: escrever um arquivo stream

// Método que gera um stream artifical
Stream<String> gerarStream() async*
{
  for (int i = 1; i <= 10; i++) {
    await Future.delayed(Duration(seconds: 1));

    stdout.write("$i ");  // lembre-se: isso apenas printa na tela!

    yield "$i "; // yield = adiciona um valor ao Iterable de retorno

    if(i == 5) {
      stdout.write("\n");
      yield "\n";
    }

  }
}

main() async
{
  // Cria arquivo:
  final arquivo = File("minha_pasta1/arq_stream.txt");
  arquivo.delete();
  arquivo.create().then( print );

  // Escreve stream:
  IOSink sink = arquivo.openWrite(mode: FileMode.append);

  await for (String texto in gerarStream())
  {
    sink.write(texto);
    await sink.flush(); // força a saída dos dados do buffer
  }

  await sink.close();
}

