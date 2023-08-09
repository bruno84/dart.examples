import 'dart:convert';
import 'dart:io';

main() async
{
  // Cria arquivo:
  final arquivo = File("minha_pasta1/arq_texto.txt");
  arquivo.create().then( print );

  // Escreve texto:
  await arquivo.writeAsString("linha um\n", encoding: Utf8Codec());
  await arquivo.writeAsString("linha dois", mode: FileMode.append);
}