import 'dart:io';

main() async
{
  // Retorna o diretório atual do arquivo em execução:
  print(Directory.current);

  // Define os nomes das pastas/subpastas:
  Directory pasta1 = Directory("minha_pasta1");
  Directory pasta2 = Directory("minha_pasta2");

  // Cria pasta:
  // OBS: create() é um método assíncrono
  await pasta1.create(recursive: true).then( print ); // (dir) => print(dir)
  await pasta2.create(recursive: true).then( print ); // (dir) => print(dir)
  // OBS: ao usar await, o fluxo só prossegue quando o método assíncrono for concluido

  // Verifica se pasta existe
  pasta1.exists().then( (flag) => print("pasta1 $flag") );
  pasta2.exists().then( (flag) => print("pasta2 $flag") );

  // Deleta pasta2
  pasta2.delete(recursive: true).then( ( diretorio ) => print("diretorio: $diretorio") );
}

