import 'dart:io';
import 'dart:convert';

main() async
{
  // Ler arquivo de texto
  File file1 = File("minha_pasta1/arq_texto.txt");
  String texto = await file1.readAsString(encoding: Utf8Codec());
  print(texto);

  // Ler arquivo binário
  File file2 = File("minha_pasta1/arq_bytes.txt");
  var list = await file2.readAsBytes();
  print(list);

  // Ler stream (em andamento)
  final file3 = File("minha_pasta1/arq_stream.txt");
  Stream<List<int>> streamBytes = file3.openRead();
  Stream<String> linhas = utf8.decoder.bind(streamBytes).transform(LineSplitter());
  await for (var linha in linhas) {
    print(linha);
  }

  // Ler stream (já finalizado)
  texto = await file3.readAsString(encoding: Utf8Codec());
  print(texto);

}