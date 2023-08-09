import 'dart:io';

main() async
{
  // Cria arquivo:
  final arquivo = File("minha_pasta1/arq_bytes.txt");
  arquivo.create().then( print );

  // Escreve bytes:
  await arquivo.writeAsBytes( [10, 20, 30], mode: FileMode.append);
}