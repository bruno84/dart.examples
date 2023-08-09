import 'dart:convert';
import 'dart:io';

main() async
{
  // Cria arquivo:
  final arquivo = File("minha_pasta1/arq_stream.txt");
  arquivo.create().then( print );

  // Escreve stream:
  IOSink sink = arquivo.openWrite(mode: FileMode.append);
  await for (String texto in gerarStream()) {
    sink.write(texto);
    await sink.flush(); // força a saída dos dados do buffer
  }
  await sink.close();
}

// Gera um stream artifical
Stream<String> gerarStream() async*
{
  for (int i = 0; i <= 10; i++) {
    await Future.delayed(Duration(seconds: 1));
    stdout.write("$i ");
    yield "$i "; // adiciona um valor ao Iterable de retorno
  }
}