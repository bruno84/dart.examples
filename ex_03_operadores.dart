import 'dart:io';
// EXEMPLO:
// Operadores

main()
{
  //-------------------------------------------------------
  // OPERADORES ARITMÉTICOS
  //-------------------------------------------------------
  print("\nOPERADORES ARITMÉTICOS");
  int int1 = 11;
  int int2 = 4;
  int result = int1 + int2;
  print("Soma: $result"); // 15

  result = int1 - int2;
  print("Subtracao: $result"); // 7

  result = int1 * int2;
  print("Multiplicacao: $result"); // 44

  // Atenção!
  result = int1 ~/ int2;
  print("Divisao (inteiro): $result"); // 2
  double result2 = int1 / int2;
  print("Divisao (double): $result2"); // 2.75

  result = int1 % int2;    // % apenas com operandos inteiros
  print("Resto: $result"); // 3

  //-------------------------------------------------------
  // OPERADORES DE ATRIBUIÇÃO
  //-------------------------------------------------------
  print("\nOPERADORES DE ATRIBUIÇÃO");
  result = 5;
  result += 10;
  print("result: $result"); // 15
  //OBS: pode ser usado com qualquer operador binário.

  //-------------------------------------------------------
  // OPERADORES RELACIONAIS
  //-------------------------------------------------------
  print("\nOPERADORES RELACIONAIS");
  int1 = 9;
  int2 = 10;

  print(int1 == int2); // false
  print(int1 != int2); // true
  print(int1 >  int2); // false
  print(int1 >= int2); // false
  print(int1 <  int2); // true
  print(int1 <= int2); // true

  //-------------------------------------------------------
  // OPERADORES LÓGICOS
  //-------------------------------------------------------
  print("\nOPERADORES LÓGICOS");
  bool bool1, bool2;
  bool1 = false;
  bool2 = true;
  print( bool1 && bool2 ); // false
  print( bool2 && bool1 ); // false
  print( bool1 || bool2 ); // true
  print( bool2 || bool1 ); // true
  print(!bool1);           // true
  print(!bool2);           // false

  //-------------------------------------------------------
  // OPERADORES BINÁRIOS
  //-------------------------------------------------------
  print("\nOPERADORES BINÁRIOS");
  int1 = 42;
  int2 = 27;

  print("Operador: & (AND bit a bit)");
  result = int1 & int2; // AND bit a bit
  print(  int1.toRadixString(2).padLeft(8, '0')); // 00101010
  print(  int2.toRadixString(2).padLeft(8, '0')); // 00011011
  print(result.toRadixString(2).padLeft(8, '0')); // 00001010
  print(result); // 10

  print("Operador: | (OR bit a bit)");
  result = int1 | int2; // OR bit a bit
  print(  int1.toRadixString(2).padLeft(8, '0')); // 00101010
  print(  int2.toRadixString(2).padLeft(8, '0')); // 00011011
  print(result.toRadixString(2).padLeft(8, '0')); // 00111011
  print(result); // 59

  print("Operador: ^ (XOR bit a bit)");
  result = int1 | int2; // XOR bit a bit (OU EXCLUSIVO)
  print(  int1.toRadixString(2).padLeft(8, '0')); // 00101010
  print(  int2.toRadixString(2).padLeft(8, '0')); // 00011011
  print(result.toRadixString(2).padLeft(8, '0')); // 00110001
  print(result); // 49

  print("Operador: ~ (NOT bit a bit)");
  result = ~int1; // NOT bit a bit
  // 0000000000000000000000000000000000000000000000000000000000101010
  // 1111111111111111111111111111111111111111111111111111111111010101
  print(int1);   //  42
  print(result); // -43

  print("Operador: >> (Shift Right)");
  result = int1 >> 1; // Move para direita x casas
  print(  int1.toRadixString(2).padLeft(8, '0')); // 00101010
  print(result.toRadixString(2).padLeft(8, '0')); // 00010101
  print(result); // 21

  print("Operador: << (Shift Left)");
  result = int1 << 1; // Move para esquerda  x casas
  print(  int1.toRadixString(2).padLeft(8, '0')); // 00101010
  print(result.toRadixString(2).padLeft(8, '0')); // 01010100
  print(result); // 84

  //-------------------------------------------------------
  // OPERADORES DE INCREMENTO/DECREMENTO
  //-------------------------------------------------------
  print("\nOPERADORES DE INCREMENTO/DECREMENTO");
  // ++i (pre-incremento) : retorna o valor incrementado de i
  // i++ (pos-incremento) : retorna o valor inicial de i

  int1 = int2 = 0;
  int1 = ++int2;
  print("int1: $int1"); // 1
  print("int2: $int2"); // 1

  int1 = int2 = 0;
  int1 = int2++;
  print("int1: $int1"); // 0
  print("int2: $int2"); // 1

  //-------------------------------------------------------
  // OPERADOR DE VALIDAÇÃO DE TIPO
  //-------------------------------------------------------
  print("\nOPERADOR DE VALIDAÇÃO DE TIPO");
  num numero1 = 10;
  num numero2 = 10.5;

  if (numero1 is int) {
    print('numero1 é int');
  }
  if (numero2 is double) {
    print('numero2 é double');
  }

  //-------------------------------------------------------
  // OPERADOR CASCADE
  //-------------------------------------------------------
  print("\nOPERADOR CASCADE");

  // Sem cascade:
  StringBuffer frase1 = StringBuffer();
  frase1.write("Cenário ");
  frase1.write("SEM ");
  frase1.write("cascade");
  print(frase1);
  // Com cascade:
  StringBuffer frase2 = StringBuffer()
    ..write("Cenário ")
    ..write("COM ")
    ..write("cascade");
  print(frase2);

  //-------------------------------------------------------
  // OPERADOR SPREAD
  //-------------------------------------------------------
  print("\nOPERADOR SPREAD");
  final letras  = ["A", "B", "C"];
  final numeros = ["1", "2", "3"];
  final alfabeto = [...letras, ...numeros]; // concatena todos os elementos
  print(alfabeto); // [A, B, C, 1, 2, 3]

  //-------------------------------------------------------
  // OPERADORES DE NULIDADE
  //-------------------------------------------------------
  print("\nOPERADORES DE NULIDADE");

  int? obj1 = null;
  var r1 = obj1 ?? 10; // Haverá atribuição pois obj1 é null
  print(r1); // 10

  int? obj2 = 20;
  var r2 = obj2 ?? 10; // Não haverá atribuição pois obj2 não é null
  print(r2); // 20

  var r3 = null;
  r3 ??= 30; // Combinação com operador de atribuição
  print(r3); // 30

  String? obj3 = null;
  print(obj3?.length); // null
  // OBS: operador unário que permite acessar propriedades/métodos
  // de um objeto mesmo que seja null, sem risco de NullPointerException
}