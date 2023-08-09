void main()
{
  // OBS: É preciso fazer conversão explícita para string
  String str = 'Resultado:' + 42.toString();
  print(str); // > Resultado: 42

  // split()
  str = "Bruno";
  List<String> letras = str.split('');
  print(letras);
  str = "Bru-no";
  List<String> silabas = str.split('-');
  print(silabas);

  // Unicode
  str = "ABC";
  print(str.codeUnits); // [65, 66, 67] list
  print(str.runes);     // (65, 66, 67) iterable
  print(String.fromCharCode(65)+String.fromCharCode(67)); // AC

  // Aspas
  print("Alguém disse: 'Tudo em paz?' ");
  print('Alguém disse: "Tudo em paz?" ');
  print("Alguém disse: \"Tudo em paz?\" ");
  print('''String com 
  várias 
  linhas''');

  // Comparações
  String str1 = "Ana";
  String str2 = "Bruno";
  String str3 = "Bruno";
  String str4 = "Caio";

  print( str1 == str2 );
  print( identical(str1, str2) );
  print( str1.compareTo(str2) );
  print( str4.compareTo(str2) );
  print( str2.compareTo(str3) );

  // Funções diversas
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
}