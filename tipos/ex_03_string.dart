// Exemplo: exemplos de métodos da classe String

void main()
{
  // OBS: É preciso fazer conversão explícita para string
  String str = 'Resultado:' + 42.toString();
  print(str); // > Resultado: 42

  print("\n split()");
  str = "Bruno";
  List<String> letras = str.split('');
  print(letras);
  str = "Bru-no";
  List<String> silabas = str.split('-');
  print(silabas);

  print("\n Unicode");
  str = "ABC";
  print(str.codeUnits); // [65, 66, 67] list
  print(str.runes);     // (65, 66, 67) iterable
  // OBS: runes = Unicode code points of a string
  print(String.fromCharCode(65)+String.fromCharCode(67)); // AC

  print("\n Aspas");
  print("Alguém disse: 'Tudo em paz?' ");
  print('Alguém disse: "Tudo em paz?" ');
  print("Alguém disse: \"Tudo em paz?\" ");
  print('''String com 
  várias 
  linhas''');

  print("\n Comparações");
  String str1 = "Ana";
  String str2 = "Bruno";
  String str3 = "Caio";
  String str33 = "Caio";

  print( str1 == str2 );
  print( identical(str1, str2) );
  print( str2.compareTo(str1) );
  print( str2.compareTo(str3) );
  print( str3.compareTo(str33) );

  print("\n Funções diversas");
  str = "";
  print('isEmpty: ${str.isEmpty}'); // isEmpty: true
  str = "Brunooo";
  print("padLeft: ${str.padLeft(10, '<')}");   // <<<Brunooo
  print("padRight: ${str.padRight(10, '>')}"); // Brunooo>>>
  print("replaceAll: ${str.replaceAll('o', '!')}");     // Brun!!!
  print("replaceFirst: ${str.replaceFirst('o', '!')}"); // Brun!oo
  print("startsWith: ${str.startsWith("Bru")}" );   // true
  print("contains: ${str.contains("no")}" );        // true
  print("endsWith: ${str.endsWith("ooo")}" );       // true
  print("toLowerCase: ${str.toLowerCase()} ");  // brunooo
  print("toUpperCase: ${str.toUpperCase()} ");  // BRUNOOO
  print(str); // lembre-se! nao é alterada!
}